; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_append_local_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_append_local_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32*, i32* }

@HCI_MAX_AD_LENGTH = common dso_local global i32 0, align 4
@HCI_MAX_SHORT_NAME_LENGTH = common dso_local global i32 0, align 4
@EIR_NAME_COMPLETE = common dso_local global i32 0, align 4
@EIR_NAME_SHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @append_local_name(%struct.hci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @HCI_MAX_AD_LENGTH, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* @HCI_MAX_SHORT_NAME_LENGTH, align 4
  %16 = add nsw i32 %15, 3
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @strlen(i32* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @HCI_MAX_SHORT_NAME_LENGTH, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ule i64 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EIR_NAME_COMPLETE, align 4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i32 @eir_append_data(i32* %33, i32 %34, i32 %35, i32* %38, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %87

43:                                               ; preds = %27, %20
  %44 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @strlen(i32* %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @EIR_NAME_SHORT, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i32 @eir_append_data(i32* %51, i32 %52, i32 %53, i32* %56, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %87

61:                                               ; preds = %43
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load i32, i32* @HCI_MAX_SHORT_NAME_LENGTH, align 4
  %66 = add nsw i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %10, align 8
  %69 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %11, align 8
  %70 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @HCI_MAX_SHORT_NAME_LENGTH, align 4
  %74 = call i32 @memcpy(i32* %69, i32* %72, i32 %73)
  %75 = load i32, i32* @HCI_MAX_SHORT_NAME_LENGTH, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %69, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EIR_NAME_SHORT, align 4
  %81 = mul nuw i64 4, %67
  %82 = trunc i64 %81 to i32
  %83 = call i32 @eir_append_data(i32* %78, i32 %79, i32 %80, i32* %69, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %84)
  br label %87

85:                                               ; preds = %61
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %64, %50, %32, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @eir_append_data(i32*, i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
