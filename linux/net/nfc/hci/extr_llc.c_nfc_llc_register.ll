; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc.c_nfc_llc_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc.c_nfc_llc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llc_ops = type { i32 }
%struct.nfc_llc_engine = type { i32, %struct.nfc_llc_ops*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llc_engines = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_llc_register(i8* %0, %struct.nfc_llc_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfc_llc_ops*, align 8
  %6 = alloca %struct.nfc_llc_engine*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.nfc_llc_ops* %1, %struct.nfc_llc_ops** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.nfc_llc_engine* @kzalloc(i32 24, i32 %7)
  store %struct.nfc_llc_engine* %8, %struct.nfc_llc_engine** %6, align 8
  %9 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %6, align 8
  %10 = icmp eq %struct.nfc_llc_engine* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kstrdup(i8* %15, i32 %16)
  %18 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %6, align 8
  %19 = getelementptr inbounds %struct.nfc_llc_engine, %struct.nfc_llc_engine* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %6, align 8
  %21 = getelementptr inbounds %struct.nfc_llc_engine, %struct.nfc_llc_engine* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %6, align 8
  %26 = call i32 @kfree(%struct.nfc_llc_engine* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %14
  %30 = load %struct.nfc_llc_ops*, %struct.nfc_llc_ops** %5, align 8
  %31 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %6, align 8
  %32 = getelementptr inbounds %struct.nfc_llc_engine, %struct.nfc_llc_engine* %31, i32 0, i32 1
  store %struct.nfc_llc_ops* %30, %struct.nfc_llc_ops** %32, align 8
  %33 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %6, align 8
  %34 = getelementptr inbounds %struct.nfc_llc_engine, %struct.nfc_llc_engine* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %6, align 8
  %37 = getelementptr inbounds %struct.nfc_llc_engine, %struct.nfc_llc_engine* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %37, i32* @llc_engines)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %24, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.nfc_llc_engine* @kzalloc(i32, i32) #1

declare dso_local i32* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.nfc_llc_engine*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
