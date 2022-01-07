; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_generate_rpa.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_generate_rpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_dev* }
%struct.smp_dev = type { i32 }
%struct.TYPE_4__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RPA %pMR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_generate_rpa(%struct.hci_dev* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  %9 = alloca %struct.smp_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  store %struct.l2cap_chan* %13, %struct.l2cap_chan** %8, align 8
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %15 = icmp ne %struct.l2cap_chan* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 0
  %19 = load %struct.smp_dev*, %struct.smp_dev** %18, align 8
  %20 = icmp ne %struct.smp_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 0
  %27 = load %struct.smp_dev*, %struct.smp_dev** %26, align 8
  store %struct.smp_dev* %27, %struct.smp_dev** %9, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = call i32 @get_random_bytes(i32* %31, i32 3)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 63
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 64
  store i32 %44, i32* %42, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @smp_ah(i32* %45, i32* %49, i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %24
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %24
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %56, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @smp_ah(i32*, i32*, i32*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
