; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_check_underflow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_check_underflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6t_entry = type { i32 }
%struct.xt_entry_target = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xt_standard_target = type { i32 }

@XT_STANDARD_TARGET = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6t_entry*)* @check_underflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_underflow(%struct.ip6t_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip6t_entry*, align 8
  %4 = alloca %struct.xt_entry_target*, align 8
  %5 = alloca i32, align 4
  store %struct.ip6t_entry* %0, %struct.ip6t_entry** %3, align 8
  %6 = load %struct.ip6t_entry*, %struct.ip6t_entry** %3, align 8
  %7 = call i32 @unconditional(%struct.ip6t_entry* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.ip6t_entry*, %struct.ip6t_entry** %3, align 8
  %12 = call %struct.xt_entry_target* @ip6t_get_target_c(%struct.ip6t_entry* %11)
  store %struct.xt_entry_target* %12, %struct.xt_entry_target** %4, align 8
  %13 = load %struct.xt_entry_target*, %struct.xt_entry_target** %4, align 8
  %14 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XT_STANDARD_TARGET, align 4
  %19 = call i64 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %40

22:                                               ; preds = %10
  %23 = load %struct.xt_entry_target*, %struct.xt_entry_target** %4, align 8
  %24 = bitcast %struct.xt_entry_target* %23 to %struct.xt_standard_target*
  %25 = getelementptr inbounds %struct.xt_standard_target, %struct.xt_standard_target* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub i32 0, %27
  %29 = sub i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NF_DROP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NF_ACCEPT, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %22
  %38 = phi i1 [ true, %22 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %21, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @unconditional(%struct.ip6t_entry*) #1

declare dso_local %struct.xt_entry_target* @ip6t_get_target_c(%struct.ip6t_entry*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
