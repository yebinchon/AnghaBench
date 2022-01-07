; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, i64, i32, %struct.nfc_hci_init_data, %struct.nfc_hci_ops*, i32* }
%struct.nfc_hci_init_data = type { i32 }
%struct.nfc_hci_ops = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfc_hci_recv_from_llc = common dso_local global i32 0, align 4
@nfc_hci_llc_failure = common dso_local global i32 0, align 4
@hci_nfc_ops = common dso_local global i32 0, align 4
@HCI_CMDS_HEADROOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfc_hci_dev* @nfc_hci_allocate_device(%struct.nfc_hci_ops* %0, %struct.nfc_hci_init_data* %1, i64 %2, i64 %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.nfc_hci_dev*, align 8
  %10 = alloca %struct.nfc_hci_ops*, align 8
  %11 = alloca %struct.nfc_hci_init_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_hci_ops* %0, %struct.nfc_hci_ops** %10, align 8
  store %struct.nfc_hci_init_data* %1, %struct.nfc_hci_init_data** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.nfc_hci_ops*, %struct.nfc_hci_ops** %10, align 8
  %20 = getelementptr inbounds %struct.nfc_hci_ops, %struct.nfc_hci_ops* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store %struct.nfc_hci_dev* null, %struct.nfc_hci_dev** %9, align 8
  br label %98

24:                                               ; preds = %8
  %25 = load i64, i64* %13, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store %struct.nfc_hci_dev* null, %struct.nfc_hci_dev** %9, align 8
  br label %98

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.nfc_hci_dev* @kzalloc(i32 40, i32 %29)
  store %struct.nfc_hci_dev* %30, %struct.nfc_hci_dev** %18, align 8
  %31 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %32 = icmp eq %struct.nfc_hci_dev* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store %struct.nfc_hci_dev* null, %struct.nfc_hci_dev** %9, align 8
  br label %98

34:                                               ; preds = %28
  %35 = load i8*, i8** %14, align 8
  %36 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %37 = load %struct.nfc_hci_ops*, %struct.nfc_hci_ops** %10, align 8
  %38 = getelementptr inbounds %struct.nfc_hci_ops, %struct.nfc_hci_ops* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @nfc_hci_recv_from_llc, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @nfc_hci_llc_failure, align 4
  %44 = call i32* @nfc_llc_allocate(i8* %35, %struct.nfc_hci_dev* %36, i32* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %46 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %48 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %53 = call i32 @kfree(%struct.nfc_hci_dev* %52)
  store %struct.nfc_hci_dev* null, %struct.nfc_hci_dev** %9, align 8
  br label %98

54:                                               ; preds = %34
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @HCI_CMDS_HEADROOM, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @nfc_allocate_device(i32* @hci_nfc_ops, i64 %55, i64 %59, i32 %60)
  %62 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %63 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %65 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %54
  %69 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %70 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @nfc_llc_free(i32* %71)
  %73 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %74 = call i32 @kfree(%struct.nfc_hci_dev* %73)
  store %struct.nfc_hci_dev* null, %struct.nfc_hci_dev** %9, align 8
  br label %98

75:                                               ; preds = %54
  %76 = load %struct.nfc_hci_ops*, %struct.nfc_hci_ops** %10, align 8
  %77 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %78 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %77, i32 0, i32 4
  store %struct.nfc_hci_ops* %76, %struct.nfc_hci_ops** %78, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %81 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %83 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %82, i32 0, i32 3
  %84 = load %struct.nfc_hci_init_data*, %struct.nfc_hci_init_data** %11, align 8
  %85 = bitcast %struct.nfc_hci_init_data* %83 to i8*
  %86 = bitcast %struct.nfc_hci_init_data* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %88 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %91 = call i32 @nfc_set_drvdata(i32 %89, %struct.nfc_hci_dev* %90)
  %92 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %93 = call i32 @nfc_hci_reset_pipes(%struct.nfc_hci_dev* %92)
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  %96 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %18, align 8
  store %struct.nfc_hci_dev* %97, %struct.nfc_hci_dev** %9, align 8
  br label %98

98:                                               ; preds = %75, %68, %51, %33, %27, %23
  %99 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %9, align 8
  ret %struct.nfc_hci_dev* %99
}

declare dso_local %struct.nfc_hci_dev* @kzalloc(i32, i32) #1

declare dso_local i32* @nfc_llc_allocate(i8*, %struct.nfc_hci_dev*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_allocate_device(i32*, i64, i64, i32) #1

declare dso_local i32 @nfc_llc_free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nfc_set_drvdata(i32, %struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_hci_reset_pipes(%struct.nfc_hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
