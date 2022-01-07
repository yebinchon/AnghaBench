; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c___cfg80211_unlink_bss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c___cfg80211_unlink_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i64, i32, i32, i32 }
%struct.cfg80211_internal_bss = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"rdev bss entries[%d]/list[empty:%d] corruption\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.cfg80211_internal_bss*)* @__cfg80211_unlink_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cfg80211_unlink_bss(%struct.cfg80211_registered_device* %0, %struct.cfg80211_internal_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_internal_bss*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.cfg80211_internal_bss* %1, %struct.cfg80211_internal_bss** %5, align 8
  %6 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %7 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %6, i32 0, i32 3
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %10 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %9, i32 0, i32 3
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %15 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %60

20:                                               ; preds = %13
  %21 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %22 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %21, i32 0, i32 3
  %23 = call i32 @list_del_init(i32* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %26 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %25, i32 0, i32 2
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %29 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %33 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %32, i32 0, i32 0
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 2
  %36 = call i32 @rb_erase(i32* %33, i32* %35)
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %42 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 1
  %48 = call i32 @list_empty(i32* %47)
  %49 = xor i32 %45, %48
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %54 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %53, i32 0, i32 1
  %55 = call i32 @list_empty(i32* %54)
  %56 = call i32 @WARN_ONCE(i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %55)
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %58 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %59 = call i32 @bss_ref_put(%struct.cfg80211_registered_device* %57, %struct.cfg80211_internal_bss* %58)
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %24, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i32) #1

declare dso_local i32 @bss_ref_put(%struct.cfg80211_registered_device*, %struct.cfg80211_internal_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
