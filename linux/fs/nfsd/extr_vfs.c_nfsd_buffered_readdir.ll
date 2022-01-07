; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_buffered_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_buffered_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.readdir_cd = type { i64 }
%struct.buffered_dirent = type { i64, i32, i32, i32, i32 }
%struct.readdir_data = type { i8*, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfsd_buffered_filldir = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfserr_eof = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)*, %struct.readdir_cd*, i32*)* @nfsd_buffered_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd_buffered_readdir(%struct.file* %0, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)* %1, %struct.readdir_cd* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)*, align 8
  %8 = alloca %struct.readdir_cd*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffered_dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.readdir_data, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)* %1, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)** %7, align 8
  store %struct.readdir_cd* %2, %struct.readdir_cd** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @__get_free_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %16, align 8
  %20 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @nfsd_buffered_filldir, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i64 @nfserrno(i32 %30)
  store i64 %31, i64* %5, align 8
  br label %135

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %115
  %36 = load i64, i64* @nfserr_eof, align 8
  %37 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %38 = getelementptr inbounds %struct.readdir_cd, %struct.readdir_cd* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 1
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.file*, %struct.file** %6, align 8
  %42 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 3
  %43 = call i32 @iterate_dir(%struct.file* %41, %struct.TYPE_2__* %42)
  store i32 %43, i32* %11, align 4
  %44 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %119

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %119

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast i8* %60 to %struct.buffered_dirent*
  store %struct.buffered_dirent* %61, %struct.buffered_dirent** %10, align 8
  br label %62

62:                                               ; preds = %96, %58
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  %66 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %67 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %13, align 4
  %69 = load i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)*, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)** %7, align 8
  %70 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %71 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %72 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %75 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %78 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %81 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %84 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 %69(%struct.readdir_cd* %70, i32 %73, i64 %76, i32 %79, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %65
  br label %111

89:                                               ; preds = %65
  %90 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %91 = getelementptr inbounds %struct.readdir_cd, %struct.readdir_cd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @nfs_ok, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %111

96:                                               ; preds = %89
  %97 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %98 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 24, %99
  %101 = call i32 @ALIGN(i64 %100, i32 4)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sub i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %struct.buffered_dirent*, %struct.buffered_dirent** %10, align 8
  %106 = bitcast %struct.buffered_dirent* %105 to i8*
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = bitcast i8* %109 to %struct.buffered_dirent*
  store %struct.buffered_dirent* %110, %struct.buffered_dirent** %10, align 8
  br label %62

111:                                              ; preds = %95, %88, %62
  %112 = load i32, i32* %12, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %119

115:                                              ; preds = %111
  %116 = load %struct.file*, %struct.file** %6, align 8
  %117 = load i32, i32* @SEEK_CUR, align 4
  %118 = call i32 @vfs_llseek(%struct.file* %116, i32 0, i32 %117)
  store i32 %118, i32* %13, align 4
  br label %35

119:                                              ; preds = %114, %57, %51
  %120 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %14, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = call i32 @free_page(i64 %122)
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %11, align 4
  %128 = call i64 @nfserrno(i32 %127)
  store i64 %128, i64* %5, align 8
  br label %135

129:                                              ; preds = %119
  %130 = load i32, i32* %13, align 4
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %133 = getelementptr inbounds %struct.readdir_cd, %struct.readdir_cd* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %129, %126, %28
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @iterate_dir(%struct.file*, %struct.TYPE_2__*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @vfs_llseek(%struct.file*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
