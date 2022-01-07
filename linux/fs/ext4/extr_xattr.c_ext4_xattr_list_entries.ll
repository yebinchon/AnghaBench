; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_list_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_list_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ext4_xattr_entry = type { i64, i8*, i32 }
%struct.xattr_handler = type { i8*, i32, i64 (%struct.dentry.0*)* }
%struct.dentry.0 = type opaque

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.ext4_xattr_entry*, i8*, i64)* @ext4_xattr_list_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_list_entries(%struct.dentry* %0, %struct.ext4_xattr_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ext4_xattr_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xattr_handler*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.ext4_xattr_entry* %1, %struct.ext4_xattr_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %100, %4
  %17 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %18 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %103

21:                                               ; preds = %16
  %22 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %23 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.xattr_handler* @ext4_xattr_handler(i32 %24)
  store %struct.xattr_handler* %25, %struct.xattr_handler** %11, align 8
  %26 = load %struct.xattr_handler*, %struct.xattr_handler** %11, align 8
  %27 = icmp ne %struct.xattr_handler* %26, null
  br i1 %27, label %28, label %99

28:                                               ; preds = %21
  %29 = load %struct.xattr_handler*, %struct.xattr_handler** %11, align 8
  %30 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %29, i32 0, i32 2
  %31 = load i64 (%struct.dentry.0*)*, i64 (%struct.dentry.0*)** %30, align 8
  %32 = icmp ne i64 (%struct.dentry.0*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.xattr_handler*, %struct.xattr_handler** %11, align 8
  %35 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %34, i32 0, i32 2
  %36 = load i64 (%struct.dentry.0*)*, i64 (%struct.dentry.0*)** %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = bitcast %struct.dentry* %37 to %struct.dentry.0*
  %39 = call i64 %36(%struct.dentry.0* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %99

41:                                               ; preds = %33, %28
  %42 = load %struct.xattr_handler*, %struct.xattr_handler** %11, align 8
  %43 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = sext i32 %44 to i64
  %48 = inttoptr i64 %47 to i8*
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.xattr_handler*, %struct.xattr_handler** %11, align 8
  %51 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i8* [ %48, %46 ], [ %52, %49 ]
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i64 @strlen(i8* %55)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %59 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %57, %60
  %62 = add i64 %61, 1
  store i64 %62, i64* %14, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %95

65:                                               ; preds = %53
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %108

72:                                               ; preds = %65
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @memcpy(i8* %73, i8* %74, i64 %75)
  %77 = load i64, i64* %13, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %82 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %85 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @memcpy(i8* %80, i8* %83, i64 %86)
  %88 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %89 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  store i8 0, i8* %93, align 1
  br label %95

95:                                               ; preds = %72, %53
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %10, align 8
  %98 = sub i64 %97, %96
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %95, %33, %21
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %102 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %101)
  store %struct.ext4_xattr_entry* %102, %struct.ext4_xattr_entry** %7, align 8
  br label %16

103:                                              ; preds = %16
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %103, %69
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local %struct.xattr_handler* @ext4_xattr_handler(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
