; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, i32 }
%struct.ncsi_dev_priv = type { i32, i32, %struct.ncsi_request* }

@NCSI_REQ_START_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ncsi_request* @ncsi_alloc_request(%struct.ncsi_dev_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ncsi_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncsi_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ncsi_dev_priv* %0, %struct.ncsi_dev_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ncsi_request* null, %struct.ncsi_request** %5, align 8
  %9 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %9, i32 0, i32 2
  %11 = load %struct.ncsi_request*, %struct.ncsi_request** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.ncsi_request* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %51, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %25, i32 0, i32 2
  %27 = load %struct.ncsi_request*, %struct.ncsi_request** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %27, i64 %29
  %31 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %51

35:                                               ; preds = %24
  %36 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %36, i32 0, i32 2
  %38 = load %struct.ncsi_request*, %struct.ncsi_request** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %38, i64 %40
  store %struct.ncsi_request* %41, %struct.ncsi_request** %5, align 8
  %42 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %43 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %46 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %50 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %93

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %20

54:                                               ; preds = %20
  %55 = load i32, i32* @NCSI_REQ_START_IDX, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %89, %54
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %59 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %63, i32 0, i32 2
  %65 = load %struct.ncsi_request*, %struct.ncsi_request** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %65, i64 %67
  %69 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %89

73:                                               ; preds = %62
  %74 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %74, i32 0, i32 2
  %76 = load %struct.ncsi_request*, %struct.ncsi_request** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %76, i64 %78
  store %struct.ncsi_request* %79, %struct.ncsi_request** %5, align 8
  %80 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %81 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %84 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %93

89:                                               ; preds = %72
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %56

92:                                               ; preds = %56
  br label %93

93:                                               ; preds = %92, %73, %35
  %94 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %95 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %94, i32 0, i32 1
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  ret %struct.ncsi_request* %98
}

declare dso_local i32 @ARRAY_SIZE(%struct.ncsi_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
