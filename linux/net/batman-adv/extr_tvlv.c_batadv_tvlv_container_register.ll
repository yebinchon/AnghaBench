; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_container_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_container_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.batadv_tvlv_container = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_tvlv_container_register(%struct.batadv_priv* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.batadv_tvlv_container*, align 8
  %12 = alloca %struct.batadv_tvlv_container*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i64, i64* %10, align 8
  %18 = add i64 32, %17
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.batadv_tvlv_container* @kzalloc(i64 %18, i32 %19)
  store %struct.batadv_tvlv_container* %20, %struct.batadv_tvlv_container** %12, align 8
  %21 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %22 = icmp ne %struct.batadv_tvlv_container* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %79

24:                                               ; preds = %16
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %27 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %31 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @htons(i64 %33)
  %35 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %36 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %39 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %38, i64 1
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %42 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ntohs(i32 %44)
  %46 = call i32 @memcpy(%struct.batadv_tvlv_container* %39, i8* %40, i32 %45)
  %47 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %48 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %47, i32 0, i32 0
  %49 = call i32 @INIT_HLIST_NODE(i32* %48)
  %50 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %51 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %50, i32 0, i32 1
  %52 = call i32 @kref_init(i32* %51)
  %53 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %54 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call %struct.batadv_tvlv_container* @batadv_tvlv_container_get(%struct.batadv_priv* %57, i8* %58, i8* %59)
  store %struct.batadv_tvlv_container* %60, %struct.batadv_tvlv_container** %11, align 8
  %61 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %62 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %11, align 8
  %63 = call i32 @batadv_tvlv_container_remove(%struct.batadv_priv* %61, %struct.batadv_tvlv_container* %62)
  %64 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %65 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %64, i32 0, i32 1
  %66 = call i32 @kref_get(i32* %65)
  %67 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %68 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %67, i32 0, i32 0
  %69 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %70 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = call i32 @hlist_add_head(i32* %68, i32* %71)
  %73 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %74 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %12, align 8
  %78 = call i32 @batadv_tvlv_container_put(%struct.batadv_tvlv_container* %77)
  br label %79

79:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.batadv_tvlv_container* @kzalloc(i64, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @memcpy(%struct.batadv_tvlv_container*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_tvlv_container* @batadv_tvlv_container_get(%struct.batadv_priv*, i8*, i8*) #1

declare dso_local i32 @batadv_tvlv_container_remove(%struct.batadv_priv*, %struct.batadv_tvlv_container*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_tvlv_container_put(%struct.batadv_tvlv_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
