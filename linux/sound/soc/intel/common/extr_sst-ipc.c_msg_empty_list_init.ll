; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_msg_empty_list_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_msg_empty_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }

@IPC_EMPTY_LIST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_generic_ipc*)* @msg_empty_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_empty_list_init(%struct.sst_generic_ipc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_generic_ipc*, align 8
  %4 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %3, align 8
  %5 = load i32, i32* @IPC_EMPTY_LIST_SIZE, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_7__* @kcalloc(i32 %5, i32 4, i32 %6)
  %8 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %9 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %8, i32 0, i32 0
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %9, align 8
  %10 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %11 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %143

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %103, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IPC_EMPTY_LIST_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %18
  %23 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %24 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_7__*
  %29 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %30 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %38 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp eq %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  br label %107

48:                                               ; preds = %22
  %49 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %50 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_7__*
  %55 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %56 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %62, align 8
  %63 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %64 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = icmp eq %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %48
  %74 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %75 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @kfree(%struct.TYPE_7__* %82)
  br label %107

84:                                               ; preds = %48
  %85 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %86 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = call i32 @init_waitqueue_head(i32* %91)
  %93 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %94 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %101 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %100, i32 0, i32 1
  %102 = call i32 @list_add(i32* %99, i32* %101)
  br label %103

103:                                              ; preds = %84
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %18

106:                                              ; preds = %18
  store i32 0, i32* %2, align 4
  br label %143

107:                                              ; preds = %73, %47
  br label %108

108:                                              ; preds = %111, %107
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %113 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = call i32 @kfree(%struct.TYPE_7__* %121)
  %123 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %124 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = call i32 @kfree(%struct.TYPE_7__* %132)
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %4, align 4
  br label %108

136:                                              ; preds = %108
  %137 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %138 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = call i32 @kfree(%struct.TYPE_7__* %139)
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %136, %106, %14
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_7__* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
