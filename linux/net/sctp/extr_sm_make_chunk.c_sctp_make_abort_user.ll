; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_abort_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_abort_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i32 }
%struct.msghdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCTP_ERROR_USER_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_abort_user(%struct.sctp_association* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %11, i32* null, i32 %14)
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %8, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %17 = icmp ne %struct.sctp_chunk* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %60

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i64 %23, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %57

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @memcpy_from_msg(i8* %30, %struct.msghdr* %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %54

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %40 = load i32, i32* @SCTP_ERROR_USER_ABORT, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @sctp_init_cause(%struct.sctp_chunk* %39, i32 %40, i64 %41)
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %43, i64 %44, i8* %45)
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @kfree(i8* %50)
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  store %struct.sctp_chunk* %53, %struct.sctp_chunk** %4, align 8
  br label %62

54:                                               ; preds = %36
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @kfree(i8* %55)
  br label %57

57:                                               ; preds = %54, %28
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %59 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %58)
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %8, align 8
  br label %60

60:                                               ; preds = %57, %18
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  store %struct.sctp_chunk* %61, %struct.sctp_chunk** %4, align 8
  br label %62

62:                                               ; preds = %60, %52
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %63
}

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, i32*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy_from_msg(i8*, %struct.msghdr*, i64) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i64) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
