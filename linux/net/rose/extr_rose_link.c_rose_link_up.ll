; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_neigh = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@rose_callsign = common dso_local global i32 0, align 4
@null_ax25_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rose_neigh*)* @rose_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_link_up(%struct.rose_neigh* %0) #0 {
  %2 = alloca %struct.rose_neigh*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.rose_neigh* %0, %struct.rose_neigh** %2, align 8
  %5 = call i64 @ax25cmp(i32* @rose_callsign, i32* @null_ax25_address)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %9 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %3, align 8
  br label %15

14:                                               ; preds = %1
  store i32* @rose_callsign, i32** %3, align 8
  br label %15

15:                                               ; preds = %14, %7
  %16 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %17 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %21 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %20, i32 0, i32 3
  %22 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %23 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %26 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32* @ax25_find_cb(i32* %19, i32* %21, i32 %24, %struct.TYPE_2__* %27)
  %29 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %30 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ax25_cb_put(i32* %34)
  br label %36

36:                                               ; preds = %33, %15
  %37 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %38 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32* @ax25_find_cb(i32*, i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ax25_cb_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
