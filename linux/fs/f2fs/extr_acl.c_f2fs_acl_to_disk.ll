; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_acl_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_acl_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.posix_acl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.f2fs_acl_header = type { i8* }
%struct.f2fs_acl_entry = type { i8*, i8*, i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@F2FS_ACL_VERSION = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.f2fs_sb_info*, %struct.posix_acl*, i64*)* @f2fs_acl_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @f2fs_acl_to_disk(%struct.f2fs_sb_info* %0, %struct.posix_acl* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.f2fs_acl_header*, align 8
  %9 = alloca %struct.f2fs_acl_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %12 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %13 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 24
  %17 = add i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.f2fs_acl_header* @f2fs_kmalloc(%struct.f2fs_sb_info* %11, i32 %18, i32 %19)
  store %struct.f2fs_acl_header* %20, %struct.f2fs_acl_header** %8, align 8
  %21 = load %struct.f2fs_acl_header*, %struct.f2fs_acl_header** %8, align 8
  %22 = icmp ne %struct.f2fs_acl_header* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i8* @ERR_PTR(i32 %25)
  store i8* %26, i8** %4, align 8
  br label %130

27:                                               ; preds = %3
  %28 = load i32, i32* @F2FS_ACL_VERSION, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.f2fs_acl_header*, %struct.f2fs_acl_header** %8, align 8
  %31 = getelementptr inbounds %struct.f2fs_acl_header, %struct.f2fs_acl_header* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.f2fs_acl_header*, %struct.f2fs_acl_header** %8, align 8
  %33 = getelementptr inbounds %struct.f2fs_acl_header, %struct.f2fs_acl_header* %32, i64 1
  %34 = bitcast %struct.f2fs_acl_header* %33 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %34, %struct.f2fs_acl_entry** %9, align 8
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %113, %27
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %38 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %35
  %42 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %43 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %9, align 8
  %52 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %54 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %9, align 8
  %63 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %65 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %111 [
    i32 129, label %72
    i32 133, label %89
    i32 128, label %106
    i32 132, label %106
    i32 131, label %106
    i32 130, label %106
  ]

72:                                               ; preds = %41
  %73 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %74 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @from_kuid(i32* @init_user_ns, i32 %80)
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %9, align 8
  %84 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %9, align 8
  %86 = bitcast %struct.f2fs_acl_entry* %85 to i8*
  %87 = getelementptr inbounds i8, i8* %86, i64 24
  %88 = bitcast i8* %87 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %88, %struct.f2fs_acl_entry** %9, align 8
  br label %112

89:                                               ; preds = %41
  %90 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %91 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @from_kgid(i32* @init_user_ns, i32 %97)
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %9, align 8
  %101 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %9, align 8
  %103 = bitcast %struct.f2fs_acl_entry* %102 to i8*
  %104 = getelementptr inbounds i8, i8* %103, i64 24
  %105 = bitcast i8* %104 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %105, %struct.f2fs_acl_entry** %9, align 8
  br label %112

106:                                              ; preds = %41, %41, %41, %41
  %107 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %9, align 8
  %108 = bitcast %struct.f2fs_acl_entry* %107 to i8*
  %109 = getelementptr inbounds i8, i8* %108, i64 4
  %110 = bitcast i8* %109 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %110, %struct.f2fs_acl_entry** %9, align 8
  br label %112

111:                                              ; preds = %41
  br label %124

112:                                              ; preds = %106, %89, %72
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %35

116:                                              ; preds = %35
  %117 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %118 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @f2fs_acl_size(i32 %119)
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  %122 = load %struct.f2fs_acl_header*, %struct.f2fs_acl_header** %8, align 8
  %123 = bitcast %struct.f2fs_acl_header* %122 to i8*
  store i8* %123, i8** %4, align 8
  br label %130

124:                                              ; preds = %111
  %125 = load %struct.f2fs_acl_header*, %struct.f2fs_acl_header** %8, align 8
  %126 = call i32 @kvfree(%struct.f2fs_acl_header* %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  %129 = call i8* @ERR_PTR(i32 %128)
  store i8* %129, i8** %4, align 8
  br label %130

130:                                              ; preds = %124, %116, %23
  %131 = load i8*, i8** %4, align 8
  ret i8* %131
}

declare dso_local %struct.f2fs_acl_header* @f2fs_kmalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i64 @f2fs_acl_size(i32) #1

declare dso_local i32 @kvfree(%struct.f2fs_acl_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
