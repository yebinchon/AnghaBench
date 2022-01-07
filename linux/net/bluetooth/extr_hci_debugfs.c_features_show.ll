; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_features_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_features_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hci_dev* }
%struct.hci_dev = type { i64, i32, i32* }

@HCI_MAX_PAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%2u: %8ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LE: %8ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @features_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @features_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  store %struct.hci_dev* %9, %struct.hci_dev** %5, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %11 = call i32 @hci_dev_lock(%struct.hci_dev* %10)
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @HCI_MAX_PAGES, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %17, %20
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i1 [ false, %12 ], [ %21, %16 ]
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %12

37:                                               ; preds = %22
  %38 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %39 = call i64 @lmp_le_capable(%struct.hci_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %50 = call i32 @hci_dev_unlock(%struct.hci_dev* %49)
  ret i32 0
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
