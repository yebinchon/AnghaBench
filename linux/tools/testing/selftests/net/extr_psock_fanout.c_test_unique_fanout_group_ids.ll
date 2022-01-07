; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_test_unique_fanout_group_ids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_test_unique_fanout_group_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"test: unique ids\0A\00", align 1
@PACKET_FANOUT_HASH = common dso_local global i32 0, align 4
@PACKET_FANOUT_FLAG_UNIQUEID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"ERROR: failed to create a unique id group.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: unexpected typeflags %x\0A\00", align 1
@PACKET_FANOUT_CPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ERROR: joined group with wrong type.\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"ERROR: failed to join previously created group.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"ERROR: failed to create a second unique id group.\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"ERROR: specified a group id when requesting unique id\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"ERROR: closing sockets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_unique_fanout_group_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unique_fanout_group_ids() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %8 = load i32, i32* @PACKET_FANOUT_FLAG_UNIQUEID, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @sock_fanout_open(i32 %9, i32 0)
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %0
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sock_fanout_getopts(i32 %21, i32* %2, i32* %3)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %19
  %32 = load i32, i32* @PACKET_FANOUT_CPU, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @sock_fanout_open(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %31
  %41 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @sock_fanout_open(i32 %41, i32 %42)
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %40
  %53 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %54 = load i32, i32* @PACKET_FANOUT_FLAG_UNIQUEID, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @sock_fanout_open(i32 %55, i32 0)
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %52
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sock_fanout_getopts(i32 %67, i32* %2, i32* %4)
  %69 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %70 = load i32, i32* @PACKET_FANOUT_FLAG_UNIQUEID, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @sock_fanout_open(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %65
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @close(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @close(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @close(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89, %84, %79
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %89
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sock_fanout_open(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sock_fanout_getopts(i32, i32*, i32*) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
