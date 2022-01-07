; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_header = type { i32 }
%struct.ext2_xattr_entry = type { i64, i64, i64, i64, i8*, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_xattr_header*, %struct.ext2_xattr_header*)* @ext2_xattr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_cmp(%struct.ext2_xattr_header* %0, %struct.ext2_xattr_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext2_xattr_header*, align 8
  %5 = alloca %struct.ext2_xattr_header*, align 8
  %6 = alloca %struct.ext2_xattr_entry*, align 8
  %7 = alloca %struct.ext2_xattr_entry*, align 8
  store %struct.ext2_xattr_header* %0, %struct.ext2_xattr_header** %4, align 8
  store %struct.ext2_xattr_header* %1, %struct.ext2_xattr_header** %5, align 8
  %8 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %4, align 8
  %9 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %8, i64 1
  %10 = call %struct.ext2_xattr_entry* @ENTRY(%struct.ext2_xattr_header* %9)
  store %struct.ext2_xattr_entry* %10, %struct.ext2_xattr_entry** %6, align 8
  %11 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %12 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %11, i64 1
  %13 = call %struct.ext2_xattr_entry* @ENTRY(%struct.ext2_xattr_header* %12)
  store %struct.ext2_xattr_entry* %13, %struct.ext2_xattr_entry** %7, align 8
  br label %14

14:                                               ; preds = %106, %2
  %15 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %16 = call i64 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %111

19:                                               ; preds = %14
  %20 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %21 = call i64 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %117

24:                                               ; preds = %19
  %25 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %26 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %29 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %68, label %32

32:                                               ; preds = %24
  %33 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %34 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %68, label %40

40:                                               ; preds = %32
  %41 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %42 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %45 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %40
  %49 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %50 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %53 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %48
  %57 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %58 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %61 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %64 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @memcmp(i8* %59, i8* %62, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56, %48, %40, %32, %24
  store i32 1, i32* %3, align 4
  br label %117

69:                                               ; preds = %56
  %70 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %71 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %76 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %117

82:                                               ; preds = %74
  %83 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %4, align 8
  %84 = bitcast %struct.ext2_xattr_header* %83 to i8*
  %85 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %86 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %84, i64 %89
  %91 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %92 = bitcast %struct.ext2_xattr_header* %91 to i8*
  %93 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %94 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %92, i64 %97
  %99 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %100 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @le32_to_cpu(i64 %101)
  %103 = call i64 @memcmp(i8* %90, i8* %98, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %82
  store i32 1, i32* %3, align 4
  br label %117

106:                                              ; preds = %82
  %107 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %6, align 8
  %108 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %107)
  store %struct.ext2_xattr_entry* %108, %struct.ext2_xattr_entry** %6, align 8
  %109 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %110 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %109)
  store %struct.ext2_xattr_entry* %110, %struct.ext2_xattr_entry** %7, align 8
  br label %14

111:                                              ; preds = %14
  %112 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %7, align 8
  %113 = call i64 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %117

116:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %115, %105, %79, %68, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.ext2_xattr_entry* @ENTRY(%struct.ext2_xattr_header*) #1

declare dso_local i64 @IS_LAST_ENTRY(%struct.ext2_xattr_entry*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
