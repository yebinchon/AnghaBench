; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_handle_pci_cfg_write.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_handle_pci_cfg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_state = type { i32*, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"BAR%d addr 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"PCI config write @0x%x of %d bytes not handled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdev_state*, i32, i32*, i32)* @handle_pci_cfg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pci_cfg_write(%struct.mdev_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mdev_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mdev_state* %0, %struct.mdev_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %97 [
    i32 4, label %13
    i32 6, label %13
    i32 60, label %14
    i32 61, label %22
    i32 16, label %23
    i32 20, label %23
    i32 24, label %89
    i32 28, label %89
    i32 32, label %89
  ]

13:                                               ; preds = %4, %4
  br label %101

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %19 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 60
  store i32 %17, i32* %21, align 4
  br label %101

22:                                               ; preds = %4
  br label %101

23:                                               ; preds = %4, %4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 20
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %34 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %42 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @STORE_LE32(i32* %46, i32 0)
  br label %101

48:                                               ; preds = %37, %32
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %58 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %56, %48
  %68 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %69 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = and i64 %75, 3
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = or i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %82 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @STORE_LE32(i32* %86, i32 %87)
  br label %101

89:                                               ; preds = %4, %4, %4
  %90 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %91 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @STORE_LE32(i32* %95, i32 0)
  br label %101

97:                                               ; preds = %4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %89, %67, %40, %22, %14, %13
  ret void
}

declare dso_local i32 @STORE_LE32(i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
