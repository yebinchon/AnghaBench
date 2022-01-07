; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfsrvl.c_caif_free_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfsrvl.c_caif_free_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32* }
%struct.cfsrvl = type { i32, i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @caif_free_client(%struct.cflayer* %0) #0 {
  %2 = alloca %struct.cflayer*, align 8
  %3 = alloca %struct.cfsrvl*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %2, align 8
  %4 = load %struct.cflayer*, %struct.cflayer** %2, align 8
  %5 = icmp eq %struct.cflayer* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.cflayer*, %struct.cflayer** %2, align 8
  %8 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %23

12:                                               ; preds = %6
  %13 = load %struct.cflayer*, %struct.cflayer** %2, align 8
  %14 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.cfsrvl* @container_obj(i32* %15)
  store %struct.cfsrvl* %16, %struct.cfsrvl** %3, align 8
  %17 = load %struct.cfsrvl*, %struct.cfsrvl** %3, align 8
  %18 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %17, i32 0, i32 1
  %19 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %20 = load %struct.cfsrvl*, %struct.cfsrvl** %3, align 8
  %21 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %20, i32 0, i32 0
  %22 = call i32 %19(i32* %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.cfsrvl* @container_obj(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
