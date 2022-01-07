; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_clear_count_and_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_clear_count_and_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.mpoa_client*)* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__, %struct.TYPE_7__*, i64 }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"holding time expired, ip = %pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*)* @clear_count_and_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_count_and_expired(%struct.mpoa_client* %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.mpoa_client* %0, %struct.mpoa_client** %2, align 8
  %6 = call i64 (...) @ktime_get_seconds()
  store i64 %6, i64* %5, align 8
  %7 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %8 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %7, i32 0, i32 0
  %9 = call i32 @write_lock_bh(i32* %8)
  %10 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %11 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %3, align 8
  br label %13

13:                                               ; preds = %45, %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %16
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %35)
  %37 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %38 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_7__*, %struct.mpoa_client*)*, i32 (%struct.TYPE_7__*, %struct.mpoa_client*)** %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %44 = call i32 %41(%struct.TYPE_7__* %42, %struct.mpoa_client* %43)
  br label %45

45:                                               ; preds = %32, %16
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %3, align 8
  br label %13

47:                                               ; preds = %13
  %48 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %49 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %48, i32 0, i32 0
  %50 = call i32 @write_unlock_bh(i32* %49)
  ret void
}

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @dprintk(i8*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
