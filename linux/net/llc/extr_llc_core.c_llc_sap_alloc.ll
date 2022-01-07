; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_core.c_llc_sap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_core.c_llc_sap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32, i32*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@LLC_SAP_STATE_ACTIVE = common dso_local global i32 0, align 4
@LLC_SK_LADDR_HASH_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llc_sap* ()* @llc_sap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llc_sap* @llc_sap_alloc() #0 {
  %1 = alloca %struct.llc_sap*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.llc_sap* @kzalloc(i32 24, i32 %3)
  store %struct.llc_sap* %4, %struct.llc_sap** %1, align 8
  %5 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %6 = icmp ne %struct.llc_sap* %5, null
  br i1 %6, label %7, label %34

7:                                                ; preds = %0
  %8 = load i32, i32* @LLC_SAP_STATE_ACTIVE, align 4
  %9 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %10 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %12 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_init(i32* %12)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %27, %7
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @LLC_SK_LADDR_HASH_ENTRIES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %20 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @INIT_HLIST_NULLS_HEAD(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %32 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %31, i32 0, i32 0
  %33 = call i32 @refcount_set(i32* %32, i32 1)
  br label %34

34:                                               ; preds = %30, %0
  %35 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  ret %struct.llc_sap* %35
}

declare dso_local %struct.llc_sap* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_NULLS_HEAD(i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
