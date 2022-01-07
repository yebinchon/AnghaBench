; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"error: please pass path to file in fuse_mnt mount-point\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hugetlbfs\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to determine huge page size\0A\00", align 1
@hugetlbfs_test = common dso_local global i32 0, align 4
@mfd_def_size = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"opening: %s\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot open(\22%s\22): %m\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"kern_memfd_fuse\00", align 1
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@global_mfd = common dso_local global i32 0, align 4
@global_p = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"read() failed: %m\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"unexpected EOF on read()\0A\00", align 1
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"memfd sealed during read() but data not discarded\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"memfd sealed after read() but data discarded\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"fuse: DONE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 3
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = call i64 (...) @default_huge_page_size()
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %28
  store i32 1, i32* @hugetlbfs_test, align 4
  %36 = load i64, i64* %13, align 8
  %37 = mul i64 %36, 2
  store i64 %37, i64* @mfd_def_size, align 8
  br label %44

38:                                               ; preds = %22
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = call i32 (...) @abort() #3
  unreachable

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i64, i64* @mfd_def_size, align 8
  %47 = call i8* @calloc(i32 1, i64 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = load i32, i32* @O_CLOEXEC, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @open(i8* %54, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %45
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = call i32 (...) @abort() #3
  unreachable

67:                                               ; preds = %45
  %68 = load i64, i64* @mfd_def_size, align 8
  %69 = load i32, i32* @MFD_CLOEXEC, align 4
  %70 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @mfd_assert_mmap_shared(i32 %73)
  store i8* %74, i8** %10, align 8
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* @global_mfd, align 4
  %76 = load i8*, i8** %10, align 8
  store i8* %76, i8** @global_p, align 8
  %77 = call i32 (...) @spawn_sealing_thread()
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* @mfd_def_size, align 8
  %81 = call i32 @read(i32 %78, i8* %79, i64 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %86 = call i32 (...) @abort() #3
  unreachable

87:                                               ; preds = %67
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %92 = call i32 (...) @abort() #3
  unreachable

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @mfd_assert_get_seals(i32 %95)
  %97 = load i32, i32* @F_SEAL_WRITE, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @join_sealing_thread(i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @F_SEAL_WRITE, align 4
  %103 = call i32 @mfd_assert_has_seals(i32 %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @mfd_assert_mmap_private(i32 %104)
  store i8* %105, i8** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %94
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* @mfd_def_size, align 8
  %112 = call i64 @memcmp(i8* %109, i8* %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %116 = call i32 (...) @abort() #3
  unreachable

117:                                              ; preds = %108, %94
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* @mfd_def_size, align 8
  %124 = call i64 @memcmp(i8* %121, i8* %122, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %128 = call i32 (...) @abort() #3
  unreachable

129:                                              ; preds = %120, %117
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @close(i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @close(i32 %133)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @free(i8* %136)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @default_huge_page_size(...) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @mfd_assert_new(i8*, i64, i32) #1

declare dso_local i8* @mfd_assert_mmap_shared(i32) #1

declare dso_local i32 @spawn_sealing_thread(...) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @mfd_assert_get_seals(i32) #1

declare dso_local i32 @join_sealing_thread(i32) #1

declare dso_local i32 @mfd_assert_has_seals(i32, i32) #1

declare dso_local i8* @mfd_assert_mmap_private(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
