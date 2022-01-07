; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_t1timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_t1timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nr_sock = type { i32, i32, i32, %struct.sock }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }

@t1timer = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NR_CONNREQ = common dso_local global i32 0, align 4
@NR_DISCREQ = common dso_local global i32 0, align 4
@nr = common dso_local global %struct.nr_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @nr_t1timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_t1timer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.nr_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %6 = ptrtoint %struct.nr_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @t1timer, align 4
  %9 = call %struct.nr_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.nr_sock* %9, %struct.nr_sock** %3, align 8
  %10 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %11 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %10, i32 0, i32 3
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %15 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %85 [
    i32 130, label %17
    i32 129, label %40
    i32 128, label %63
  ]

17:                                               ; preds = %1
  %18 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %19 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %22 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = call i32 @nr_disconnect(%struct.sock* %26, i32 %27)
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @bh_unlock_sock(%struct.sock* %29)
  br label %90

31:                                               ; preds = %17
  %32 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %33 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load i32, i32* @NR_CONNREQ, align 4
  %38 = call i32 @nr_write_internal(%struct.sock* %36, i32 %37)
  br label %39

39:                                               ; preds = %31
  br label %85

40:                                               ; preds = %1
  %41 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %42 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %45 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = call i32 @nr_disconnect(%struct.sock* %49, i32 %50)
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = call i32 @bh_unlock_sock(%struct.sock* %52)
  br label %90

54:                                               ; preds = %40
  %55 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %56 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = load i32, i32* @NR_DISCREQ, align 4
  %61 = call i32 @nr_write_internal(%struct.sock* %59, i32 %60)
  br label %62

62:                                               ; preds = %54
  br label %85

63:                                               ; preds = %1
  %64 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %65 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %68 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = call i32 @nr_disconnect(%struct.sock* %72, i32 %73)
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 @bh_unlock_sock(%struct.sock* %75)
  br label %90

77:                                               ; preds = %63
  %78 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %79 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = call i32 @nr_requeue_frames(%struct.sock* %82)
  br label %84

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %1, %84, %62, %39
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = call i32 @nr_start_t1timer(%struct.sock* %86)
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = call i32 @bh_unlock_sock(%struct.sock* %88)
  br label %90

90:                                               ; preds = %85, %71, %48, %25
  ret void
}

declare dso_local %struct.nr_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @nr_disconnect(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @nr_requeue_frames(%struct.sock*) #1

declare dso_local i32 @nr_start_t1timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
