; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_test_control_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_test_control_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"test: control multiple sockets\0A\00", align 1
@PACKET_FANOUT_HASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ERROR: failed to open HASH socket\0A\00", align 1
@PACKET_FANOUT_FLAG_DEFRAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"ERROR: joined group with wrong flag defrag\0A\00", align 1
@PACKET_FANOUT_FLAG_ROLLOVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"ERROR: joined group with wrong flag ro\0A\00", align 1
@PACKET_FANOUT_CPU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"ERROR: joined group with wrong mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"ERROR: failed to join group\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ERROR: closing sockets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_control_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_control_group() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = load i32, i32* @stderr, align 4
  %3 = call i32 @fprintf(i32 %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %5 = call i32 @sock_fanout_open(i32 %4, i32 0)
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %0
  %15 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %16 = load i32, i32* @PACKET_FANOUT_FLAG_DEFRAG, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @sock_fanout_open(i32 %17, i32 0)
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %14
  %25 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %26 = load i32, i32* @PACKET_FANOUT_FLAG_ROLLOVER, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @sock_fanout_open(i32 %27, i32 0)
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %24
  %35 = load i32, i32* @PACKET_FANOUT_CPU, align 4
  %36 = call i32 @sock_fanout_open(i32 %35, i32 0)
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %34
  %43 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %44 = call i32 @sock_fanout_open(i32 %43, i32 0)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %42
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @close(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @close(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %58
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @sock_fanout_open(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
