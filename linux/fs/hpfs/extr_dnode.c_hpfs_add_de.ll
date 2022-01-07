; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_add_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_add_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.dnode = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"name (%c,%d) already exists in dnode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpfs_dirent* @hpfs_add_de(%struct.super_block* %0, %struct.dnode* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.hpfs_dirent*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.dnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.dnode* %1, %struct.dnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.dnode*, %struct.dnode** %8, align 8
  %17 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %16)
  store %struct.hpfs_dirent* %17, %struct.hpfs_dirent** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @de_size(i32 %18, i64 %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.dnode*, %struct.dnode** %8, align 8
  %22 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %21)
  store %struct.hpfs_dirent* %22, %struct.hpfs_dirent** %12, align 8
  br label %23

23:                                               ; preds = %58, %5
  %24 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %25 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %26 = icmp ult %struct.hpfs_dirent* %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.super_block*, %struct.super_block** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %32 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %35 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %38 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hpfs_compare_names(%struct.super_block* %28, i8* %29, i32 %30, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %27
  %44 = load %struct.super_block*, %struct.super_block** %7, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.dnode*, %struct.dnode** %8, align 8
  %49 = getelementptr inbounds %struct.dnode, %struct.dnode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = call i32 @hpfs_error(%struct.super_block* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %46, i32 %47, i32 %51)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %6, align 8
  br label %118

53:                                               ; preds = %27
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %61

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %60 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %59)
  store %struct.hpfs_dirent* %60, %struct.hpfs_dirent** %12, align 8
  br label %23

61:                                               ; preds = %56, %23
  %62 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %63 = bitcast %struct.hpfs_dirent* %62 to i8*
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %68 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %69 = bitcast %struct.hpfs_dirent* %68 to i8*
  %70 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %71 = bitcast %struct.hpfs_dirent* %70 to i8*
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memmove(i8* %66, %struct.hpfs_dirent* %67, i32 %75)
  %77 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @memset(%struct.hpfs_dirent* %77, i32 0, i32 %78)
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %61
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @cpu_to_le32(i64 %83)
  %85 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %86 = bitcast %struct.hpfs_dirent* %85 to i8*
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = getelementptr inbounds i8, i8* %89, i64 -4
  %91 = bitcast i8* %90 to i32*
  store i32 %84, i32* %91, align 4
  %92 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %93 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %82, %61
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @cpu_to_le16(i32 %95)
  %97 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %98 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @hpfs_is_name_long(i8* %99, i32 %100)
  %102 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %103 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %106 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %108 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @memcpy(i32 %109, i8* %110, i32 %111)
  %113 = load %struct.dnode*, %struct.dnode** %8, align 8
  %114 = getelementptr inbounds %struct.dnode, %struct.dnode* %113, i32 0, i32 0
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @le32_add_cpu(i32* %114, i32 %115)
  %117 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  store %struct.hpfs_dirent* %117, %struct.hpfs_dirent** %6, align 8
  br label %118

118:                                              ; preds = %94, %43
  %119 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  ret %struct.hpfs_dirent* %119
}

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local i32 @de_size(i32, i64) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_compare_names(%struct.super_block*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8 zeroext, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @memmove(i8*, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hpfs_is_name_long(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
