; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_check_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_check_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_entry = type { i64, i64, i32, i32, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_XATTR_SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_entry*, i8*, i8*)* @ext4_xattr_check_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_check_entries(%struct.ext4_xattr_entry* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_xattr_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ext4_xattr_entry*, align 8
  %9 = alloca %struct.ext4_xattr_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ext4_xattr_entry* %0, %struct.ext4_xattr_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  store %struct.ext4_xattr_entry* %13, %struct.ext4_xattr_entry** %8, align 8
  br label %14

14:                                               ; preds = %44, %3
  %15 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %8, align 8
  %16 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %8, align 8
  %21 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %20)
  store %struct.ext4_xattr_entry* %21, %struct.ext4_xattr_entry** %9, align 8
  %22 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %23 = bitcast %struct.ext4_xattr_entry* %22 to i8*
  %24 = load i8*, i8** %6, align 8
  %25 = icmp uge i8* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EFSCORRUPTED, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %123

29:                                               ; preds = %19
  %30 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %8, align 8
  %31 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %8, align 8
  %34 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @strnlen(i32 %32, i64 %35)
  %37 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %8, align 8
  %38 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @EFSCORRUPTED, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %123

44:                                               ; preds = %29
  %45 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  store %struct.ext4_xattr_entry* %45, %struct.ext4_xattr_entry** %8, align 8
  br label %14

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %119, %46
  %48 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %49 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %122

52:                                               ; preds = %47
  %53 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %54 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @EXT4_XATTR_SIZE_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EFSCORRUPTED, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %123

63:                                               ; preds = %52
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %119

66:                                               ; preds = %63
  %67 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %68 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %66
  %72 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %73 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = icmp sgt i64 %77, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i32, i32* @EFSCORRUPTED, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %123

87:                                               ; preds = %71
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %88, i64 %90
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %8, align 8
  %94 = bitcast %struct.ext4_xattr_entry* %93 to i8*
  %95 = getelementptr i8, i8* %94, i64 8
  %96 = icmp ult i8* %92, %95
  br i1 %96, label %115, label %97

97:                                               ; preds = %87
  %98 = load i64, i64* %10, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = icmp sgt i64 %98, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %97
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @EXT4_XATTR_SIZE(i64 %106)
  %108 = sext i32 %107 to i64
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = icmp sgt i64 %108, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %105, %97, %87
  %116 = load i32, i32* @EFSCORRUPTED, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %123

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %66, %63
  %120 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %121 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %120)
  store %struct.ext4_xattr_entry* %121, %struct.ext4_xattr_entry** %5, align 8
  br label %47

122:                                              ; preds = %47
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %115, %84, %60, %41, %26
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_XATTR_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
