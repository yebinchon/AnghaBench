; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_quorum.c_o2quo_hb_down.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_quorum.c_o2quo_hb_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2quo_state = type { i64, i32, i32 }

@o2quo_state = common dso_local global %struct.o2quo_state zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"node %u, %d heartbeating\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"node %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"node %u, %d total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @o2quo_hb_down(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2quo_state*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.o2quo_state* @o2quo_state, %struct.o2quo_state** %3, align 8
  %4 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %5 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %8 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %12 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %18 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %23 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @test_bit(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %33 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clear_bit(i32 %31, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %38 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %36, i64 %39)
  %41 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @o2quo_clear_hold(%struct.o2quo_state* %41, i32 %42)
  %44 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %45 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, ...) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64) #1

declare dso_local i32 @o2quo_clear_hold(%struct.o2quo_state*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
