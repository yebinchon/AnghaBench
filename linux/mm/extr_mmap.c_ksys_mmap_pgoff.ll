; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_ksys_mmap_pgoff.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_ksys_mmap_pgoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.user_struct = type { i32 }
%struct.hstate = type { i32 }

@MAP_ANONYMOUS = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_HUGETLB = common dso_local global i64 0, align 8
@MAP_HUGE_SHIFT = common dso_local global i64 0, align 8
@MAP_HUGE_MASK = common dso_local global i64 0, align 8
@HUGETLB_ANON_FILE = common dso_local global i32 0, align 4
@VM_NORESERVE = common dso_local global i32 0, align 4
@HUGETLB_ANONHUGE_INODE = common dso_local global i32 0, align 4
@MAP_EXECUTABLE = common dso_local global i64 0, align 8
@MAP_DENYWRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ksys_mmap_pgoff(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.user_struct*, align 8
  %17 = alloca %struct.hstate*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.file* null, %struct.file** %14, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @untagged_addr(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @MAP_ANONYMOUS, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %6
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @audit_mmap_fd(i64 %25, i64 %26)
  %28 = load i64, i64* %12, align 8
  %29 = call %struct.file* @fget(i64 %28)
  store %struct.file* %29, %struct.file** %14, align 8
  %30 = load %struct.file*, %struct.file** %14, align 8
  %31 = icmp ne %struct.file* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i64, i64* @EBADF, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %7, align 8
  br label %126

35:                                               ; preds = %24
  %36 = load %struct.file*, %struct.file** %14, align 8
  %37 = call i64 @is_file_hugepages(%struct.file* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.file*, %struct.file** %14, align 8
  %42 = call %struct.hstate* @hstate_file(%struct.file* %41)
  %43 = call i32 @huge_page_size(%struct.hstate* %42)
  %44 = call i64 @ALIGN(i64 %40, i32 %43)
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @MAP_HUGETLB, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.file*, %struct.file** %14, align 8
  %54 = call i64 @is_file_hugepages(%struct.file* %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %45
  %58 = phi i1 [ false, %45 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %118

63:                                               ; preds = %57
  br label %104

64:                                               ; preds = %6
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @MAP_HUGETLB, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %64
  store %struct.user_struct* null, %struct.user_struct** %16, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @MAP_HUGE_SHIFT, align 8
  %72 = lshr i64 %70, %71
  %73 = load i64, i64* @MAP_HUGE_MASK, align 8
  %74 = and i64 %72, %73
  %75 = call %struct.hstate* @hstate_sizelog(i64 %74)
  store %struct.hstate* %75, %struct.hstate** %17, align 8
  %76 = load %struct.hstate*, %struct.hstate** %17, align 8
  %77 = icmp ne %struct.hstate* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i64, i64* @EINVAL, align 8
  %80 = sub i64 0, %79
  store i64 %80, i64* %7, align 8
  br label %126

81:                                               ; preds = %69
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.hstate*, %struct.hstate** %17, align 8
  %84 = call i32 @huge_page_size(%struct.hstate* %83)
  %85 = call i64 @ALIGN(i64 %82, i32 %84)
  store i64 %85, i64* %9, align 8
  %86 = load i32, i32* @HUGETLB_ANON_FILE, align 4
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* @VM_NORESERVE, align 4
  %89 = load i32, i32* @HUGETLB_ANONHUGE_INODE, align 4
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @MAP_HUGE_SHIFT, align 8
  %92 = lshr i64 %90, %91
  %93 = load i64, i64* @MAP_HUGE_MASK, align 8
  %94 = and i64 %92, %93
  %95 = call %struct.file* @hugetlb_file_setup(i32 %86, i64 %87, i32 %88, %struct.user_struct** %16, i32 %89, i64 %94)
  store %struct.file* %95, %struct.file** %14, align 8
  %96 = load %struct.file*, %struct.file** %14, align 8
  %97 = call i64 @IS_ERR(%struct.file* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %81
  %100 = load %struct.file*, %struct.file** %14, align 8
  %101 = call i64 @PTR_ERR(%struct.file* %100)
  store i64 %101, i64* %7, align 8
  br label %126

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102, %64
  br label %104

104:                                              ; preds = %103, %63
  %105 = load i64, i64* @MAP_EXECUTABLE, align 8
  %106 = load i64, i64* @MAP_DENYWRITE, align 8
  %107 = or i64 %105, %106
  %108 = xor i64 %107, -1
  %109 = load i64, i64* %11, align 8
  %110 = and i64 %109, %108
  store i64 %110, i64* %11, align 8
  %111 = load %struct.file*, %struct.file** %14, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @vm_mmap_pgoff(%struct.file* %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116)
  store i64 %117, i64* %15, align 8
  br label %118

118:                                              ; preds = %104, %62
  %119 = load %struct.file*, %struct.file** %14, align 8
  %120 = icmp ne %struct.file* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.file*, %struct.file** %14, align 8
  %123 = call i32 @fput(%struct.file* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i64, i64* %15, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %124, %99, %78, %32
  %127 = load i64, i64* %7, align 8
  ret i64 %127
}

declare dso_local i64 @untagged_addr(i64) #1

declare dso_local i32 @audit_mmap_fd(i64, i64) #1

declare dso_local %struct.file* @fget(i64) #1

declare dso_local i64 @is_file_hugepages(%struct.file*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @huge_page_size(%struct.hstate*) #1

declare dso_local %struct.hstate* @hstate_file(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.hstate* @hstate_sizelog(i64) #1

declare dso_local %struct.file* @hugetlb_file_setup(i32, i64, i32, %struct.user_struct**, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i64 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @vm_mmap_pgoff(%struct.file*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
