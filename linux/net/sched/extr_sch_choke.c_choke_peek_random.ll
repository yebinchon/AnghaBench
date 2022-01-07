; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_peek_random.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_peek_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.choke_sched_data = type { i32, i32, %struct.sk_buff** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.choke_sched_data*, i32*)* @choke_peek_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @choke_peek_random(%struct.choke_sched_data* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.choke_sched_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.choke_sched_data* %0, %struct.choke_sched_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 3, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %10 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %13 = call i32 @choke_len(%struct.choke_sched_data* %12)
  %14 = call i32 @prandom_u32_max(i32 %13)
  %15 = add i32 %11, %14
  %16 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %17 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %22 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %21, i32 0, i32 2
  %23 = load %struct.sk_buff**, %struct.sk_buff*** %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %23, i64 %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  br label %49

33:                                               ; preds = %8
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %8, label %38

38:                                               ; preds = %34
  %39 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %40 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %39, i32 0, i32 2
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %40, align 8
  %42 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %43 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %41, i64 %46
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %3, align 8
  br label %49

49:                                               ; preds = %38, %31
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %50
}

declare dso_local i32 @prandom_u32_max(i32) #1

declare dso_local i32 @choke_len(%struct.choke_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
