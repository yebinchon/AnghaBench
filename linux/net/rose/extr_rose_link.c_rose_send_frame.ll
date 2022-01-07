; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rose_neigh = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@rose_callsign = common dso_local global i32 0, align 4
@null_ax25_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.rose_neigh*)* @rose_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_send_frame(%struct.sk_buff* %0, %struct.rose_neigh* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rose_neigh*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rose_neigh* %1, %struct.rose_neigh** %4, align 8
  %7 = call i64 @ax25cmp(i32* @rose_callsign, i32* @null_ax25_address)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %11 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %5, align 8
  br label %17

16:                                               ; preds = %2
  store i32* @rose_callsign, i32** %5, align 8
  br label %17

17:                                               ; preds = %16, %9
  %18 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %19 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %24 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %23, i32 0, i32 3
  %25 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %26 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %29 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32* @ax25_send_frame(%struct.sk_buff* %21, i32 260, i32* %22, i32* %24, i32 %27, %struct.TYPE_2__* %30)
  %32 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %33 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ax25_cb_put(i32* %37)
  br label %39

39:                                               ; preds = %36, %17
  %40 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %41 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32* @ax25_send_frame(%struct.sk_buff*, i32, i32*, i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ax25_cb_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
