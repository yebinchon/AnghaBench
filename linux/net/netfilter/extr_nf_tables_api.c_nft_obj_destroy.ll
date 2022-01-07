; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_obj_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_obj_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_object = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.nft_object* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 (%struct.nft_ctx*, %struct.nft_object*)* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_object*)* @nft_obj_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_obj_destroy(%struct.nft_ctx* %0, %struct.nft_object* %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca %struct.nft_object*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store %struct.nft_object* %1, %struct.nft_object** %4, align 8
  %5 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %6 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32 (%struct.nft_ctx*, %struct.nft_object*)*, i32 (%struct.nft_ctx*, %struct.nft_object*)** %8, align 8
  %10 = icmp ne i32 (%struct.nft_ctx*, %struct.nft_object*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %13 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32 (%struct.nft_ctx*, %struct.nft_object*)*, i32 (%struct.nft_ctx*, %struct.nft_object*)** %15, align 8
  %17 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %18 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %19 = call i32 %16(%struct.nft_ctx* %17, %struct.nft_object* %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %22 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @module_put(i32 %27)
  %29 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %30 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.nft_object*, %struct.nft_object** %31, align 8
  %33 = call i32 @kfree(%struct.nft_object* %32)
  %34 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %35 = call i32 @kfree(%struct.nft_object* %34)
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.nft_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
