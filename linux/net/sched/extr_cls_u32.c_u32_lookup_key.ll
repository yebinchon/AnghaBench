; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_lookup_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_lookup_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_u_knode = type { i64, i32 }
%struct.tc_u_hnode = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_u_knode* (%struct.tc_u_hnode*, i64)* @u32_lookup_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_u_knode* @u32_lookup_key(%struct.tc_u_hnode* %0, i64 %1) #0 {
  %3 = alloca %struct.tc_u_hnode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tc_u_knode*, align 8
  store %struct.tc_u_hnode* %0, %struct.tc_u_hnode** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.tc_u_knode* null, %struct.tc_u_knode** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @TC_U32_HASH(i64 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %3, align 8
  %11 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ugt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %3, align 8
  %17 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.tc_u_knode* @rtnl_dereference(i32 %22)
  store %struct.tc_u_knode* %23, %struct.tc_u_knode** %6, align 8
  br label %24

24:                                               ; preds = %35, %15
  %25 = load %struct.tc_u_knode*, %struct.tc_u_knode** %6, align 8
  %26 = icmp ne %struct.tc_u_knode* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.tc_u_knode*, %struct.tc_u_knode** %6, align 8
  %29 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %40

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.tc_u_knode*, %struct.tc_u_knode** %6, align 8
  %37 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.tc_u_knode* @rtnl_dereference(i32 %38)
  store %struct.tc_u_knode* %39, %struct.tc_u_knode** %6, align 8
  br label %24

40:                                               ; preds = %33, %24
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct.tc_u_knode*, %struct.tc_u_knode** %6, align 8
  ret %struct.tc_u_knode* %42
}

declare dso_local i32 @TC_U32_HASH(i64) #1

declare dso_local %struct.tc_u_knode* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
