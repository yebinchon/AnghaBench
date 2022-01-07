; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_af_nfc.c_nfc_proto_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_af_nfc.c_nfc_proto_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_protocol = type { i64, i32 }

@NFC_SOCKPROTO_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@proto_tab_lock = common dso_local global i32 0, align 4
@proto_tab = common dso_local global %struct.nfc_protocol** null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_proto_register(%struct.nfc_protocol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_protocol*, align 8
  %4 = alloca i32, align 4
  store %struct.nfc_protocol* %0, %struct.nfc_protocol** %3, align 8
  %5 = load %struct.nfc_protocol*, %struct.nfc_protocol** %3, align 8
  %6 = getelementptr inbounds %struct.nfc_protocol, %struct.nfc_protocol* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.nfc_protocol*, %struct.nfc_protocol** %3, align 8
  %11 = getelementptr inbounds %struct.nfc_protocol, %struct.nfc_protocol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NFC_SOCKPROTO_MAX, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %9
  %19 = load %struct.nfc_protocol*, %struct.nfc_protocol** %3, align 8
  %20 = getelementptr inbounds %struct.nfc_protocol, %struct.nfc_protocol* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @proto_register(i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %18
  %28 = call i32 @write_lock(i32* @proto_tab_lock)
  %29 = load %struct.nfc_protocol**, %struct.nfc_protocol*** @proto_tab, align 8
  %30 = load %struct.nfc_protocol*, %struct.nfc_protocol** %3, align 8
  %31 = getelementptr inbounds %struct.nfc_protocol, %struct.nfc_protocol* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.nfc_protocol*, %struct.nfc_protocol** %29, i64 %32
  %34 = load %struct.nfc_protocol*, %struct.nfc_protocol** %33, align 8
  %35 = icmp ne %struct.nfc_protocol* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.nfc_protocol*, %struct.nfc_protocol** %3, align 8
  %41 = load %struct.nfc_protocol**, %struct.nfc_protocol*** @proto_tab, align 8
  %42 = load %struct.nfc_protocol*, %struct.nfc_protocol** %3, align 8
  %43 = getelementptr inbounds %struct.nfc_protocol, %struct.nfc_protocol* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.nfc_protocol*, %struct.nfc_protocol** %41, i64 %44
  store %struct.nfc_protocol* %40, %struct.nfc_protocol** %45, align 8
  br label %46

46:                                               ; preds = %39, %36
  %47 = call i32 @write_unlock(i32* @proto_tab_lock)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %25, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @proto_register(i32, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
