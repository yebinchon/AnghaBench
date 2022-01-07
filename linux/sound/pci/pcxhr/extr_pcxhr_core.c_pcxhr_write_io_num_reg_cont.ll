; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_write_io_num_reg_cont.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_write_io_num_reg_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"IO_NUM_REG_CONT mask %x already is set to %x\0A\00", align 1
@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_CONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcxhr_rmh, align 8
  %11 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %13 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %16 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %4
  %23 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %24 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32*, i32** %9, align 8
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %36 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %5, align 4
  br label %82

38:                                               ; preds = %4
  %39 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %40 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %10, i32 %39)
  %41 = load i32, i32* @IO_NUM_REG_CONT, align 4
  %42 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 1
  store i32 3, i32* %55, align 8
  %56 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %57 = call i32 @pcxhr_send_msg_nolock(%struct.pcxhr_mgr* %56, %struct.pcxhr_rmh* %10)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %38
  %61 = load i32, i32* %7, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %64 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %69 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32*, i32** %9, align 8
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %60
  br label %77

77:                                               ; preds = %76, %38
  %78 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %79 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %34
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg_nolock(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
