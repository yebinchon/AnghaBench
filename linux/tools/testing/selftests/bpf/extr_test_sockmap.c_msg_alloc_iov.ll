; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_msg_alloc_iov.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_msg_alloc_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, %struct.iovec* }
%struct.iovec = type { i8*, i32 }

@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"iov_count %i/%i OOM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, i32, i32, i32, i32)* @msg_alloc_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_alloc_iov(%struct.msghdr* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.iovec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8 0, i8* %12, align 1
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @calloc(i32 %17, i32 16)
  %19 = bitcast i8* %18 to %struct.iovec*
  store %struct.iovec* %19, %struct.iovec** %13, align 8
  %20 = load %struct.iovec*, %struct.iovec** %13, align 8
  %21 = icmp ne %struct.iovec* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %6, align 4
  br label %106

24:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %74, %24
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @calloc(i32 %30, i32 1)
  store i8* %31, i8** %15, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %84

39:                                               ; preds = %29
  %40 = load i8*, i8** %15, align 8
  %41 = load %struct.iovec*, %struct.iovec** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i64 %43
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 0
  store i8* %40, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.iovec*, %struct.iovec** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i64 %49
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 1
  store i32 %46, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i8, i8* %12, align 1
  %64 = add i8 %63, 1
  store i8 %64, i8* %12, align 1
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %63, i8* %68, align 1
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %58

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %54, %39
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %25

77:                                               ; preds = %25
  %78 = load %struct.iovec*, %struct.iovec** %13, align 8
  %79 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %80 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %79, i32 0, i32 1
  store %struct.iovec* %78, %struct.iovec** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %6, align 4
  br label %106

84:                                               ; preds = %34
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %100, %84
  %88 = load i32, i32* %14, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %92 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %91, i32 0, i32 1
  %93 = load %struct.iovec*, %struct.iovec** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i64 %95
  %97 = getelementptr inbounds %struct.iovec, %struct.iovec* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @free(i8* %98)
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %14, align 4
  br label %87

103:                                              ; preds = %87
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %103, %77, %22
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
