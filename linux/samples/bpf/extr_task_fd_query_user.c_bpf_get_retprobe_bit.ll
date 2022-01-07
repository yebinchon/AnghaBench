; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_task_fd_query_user.c_bpf_get_retprobe_bit.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_task_fd_query_user.c_bpf_get_retprobe_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMU_RETPROBE_FILE = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"config:\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bpf_get_retprobe_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_get_retprobe_bit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %7 = load i8*, i8** @PMU_RETPROBE_FILE, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @snprintf(i8* %6, i32 256, i8* %7, i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 %14, 256
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ true, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @CHECK_PERROR_RET(i32 %18)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @CHECK_PERROR_RET(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %29 = call i32 @read(i32 %27, i8* %28, i32 256)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp uge i64 %36, 256
  br label %38

38:                                               ; preds = %34, %16
  %39 = phi i1 [ true, %16 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @CHECK_PERROR_RET(i32 %40)
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %45 = icmp slt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @CHECK_PERROR_RET(i32 %46)
  store i32 0, i32* @errno, align 4
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %49 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i64 @strtol(i8* %51, i32* null, i32 10)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @CHECK_PERROR_RET(i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @CHECK_PERROR_RET(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
