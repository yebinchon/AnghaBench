; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_ltk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_ltk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_ltk = type { i8*, i8*, i32, i32, i8*, i32, i8*, i32, i32 }
%struct.hci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smp_ltk* @hci_add_ltk(%struct.hci_dev* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8** %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.smp_ltk*, align 8
  %11 = alloca %struct.hci_dev*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.smp_ltk*, align 8
  %21 = alloca %struct.smp_ltk*, align 8
  %22 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8** %5, i8*** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = call i8* @ltk_role(i8* %23)
  store i8* %24, i8** %22, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %22, align 8
  %29 = call %struct.smp_ltk* @hci_find_ltk(%struct.hci_dev* %25, i32* %26, i8* %27, i8* %28)
  store %struct.smp_ltk* %29, %struct.smp_ltk** %21, align 8
  %30 = load %struct.smp_ltk*, %struct.smp_ltk** %21, align 8
  %31 = icmp ne %struct.smp_ltk* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = load %struct.smp_ltk*, %struct.smp_ltk** %21, align 8
  store %struct.smp_ltk* %33, %struct.smp_ltk** %20, align 8
  br label %46

34:                                               ; preds = %9
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.smp_ltk* @kzalloc(i32 56, i32 %35)
  store %struct.smp_ltk* %36, %struct.smp_ltk** %20, align 8
  %37 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %38 = icmp ne %struct.smp_ltk* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store %struct.smp_ltk* null, %struct.smp_ltk** %10, align 8
  br label %75

40:                                               ; preds = %34
  %41 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %42 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %41, i32 0, i32 8
  %43 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = call i32 @list_add_rcu(i32* %42, i32* %44)
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %48 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %47, i32 0, i32 7
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @bacpy(i32* %48, i32* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %53 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %55 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load i8**, i8*** %16, align 8
  %58 = call i32 @memcpy(i32 %56, i8** %57, i32 4)
  %59 = load i8*, i8** %15, align 8
  %60 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %61 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %64 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %67 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %70 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  %73 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.smp_ltk*, %struct.smp_ltk** %20, align 8
  store %struct.smp_ltk* %74, %struct.smp_ltk** %10, align 8
  br label %75

75:                                               ; preds = %46, %39
  %76 = load %struct.smp_ltk*, %struct.smp_ltk** %10, align 8
  ret %struct.smp_ltk* %76
}

declare dso_local i8* @ltk_role(i8*) #1

declare dso_local %struct.smp_ltk* @hci_find_ltk(%struct.hci_dev*, i32*, i8*, i8*) #1

declare dso_local %struct.smp_ltk* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
