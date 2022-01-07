; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_key_id_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_key_id_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_llsec_key_id = type { i32, i64, i32, i32, i32 }

@IEEE802154_SCF_KEY_IMPLICIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id*)* @llsec_key_id_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_key_id_equal(%struct.ieee802154_llsec_key_id* %0, %struct.ieee802154_llsec_key_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_llsec_key_id*, align 8
  %5 = alloca %struct.ieee802154_llsec_key_id*, align 8
  store %struct.ieee802154_llsec_key_id* %0, %struct.ieee802154_llsec_key_id** %4, align 8
  store %struct.ieee802154_llsec_key_id* %1, %struct.ieee802154_llsec_key_id** %5, align 8
  %6 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %4, align 8
  %7 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %10 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %4, align 8
  %16 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE802154_SCF_KEY_IMPLICIT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %4, align 8
  %22 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %21, i32 0, i32 4
  %23 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %24 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %23, i32 0, i32 4
  %25 = call i32 @ieee802154_addr_equal(i32* %22, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %14
  %27 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %4, align 8
  %28 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %31 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %59

35:                                               ; preds = %26
  %36 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %4, align 8
  %37 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %58 [
    i32 129, label %39
    i32 128, label %40
    i32 130, label %49
  ]

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %59

40:                                               ; preds = %35
  %41 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %4, align 8
  %42 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %45 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %4, align 8
  %51 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %54 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %49, %40, %39, %34, %20, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ieee802154_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
