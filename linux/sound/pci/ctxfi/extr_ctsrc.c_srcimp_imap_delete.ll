; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_imap_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_imap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcimp_mgr = type { i32, i32, i32, i32 }
%struct.imapper = type { i32 }

@srcimp_map_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcimp_mgr*, %struct.imapper*)* @srcimp_imap_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_imap_delete(%struct.srcimp_mgr* %0, %struct.imapper* %1) #0 {
  %3 = alloca %struct.srcimp_mgr*, align 8
  %4 = alloca %struct.imapper*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.srcimp_mgr* %0, %struct.srcimp_mgr** %3, align 8
  store %struct.imapper* %1, %struct.imapper** %4, align 8
  %7 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %12 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %11, i32 0, i32 3
  %13 = load %struct.imapper*, %struct.imapper** %4, align 8
  %14 = load i32, i32* @srcimp_map_op, align 4
  %15 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %16 = call i32 @input_mapper_delete(i32* %12, %struct.imapper* %13, i32 %14, %struct.srcimp_mgr* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %17, i32 0, i32 3
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %23 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %22, i32 0, i32 3
  %24 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %25 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @srcimp_map_op, align 4
  %28 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %29 = call i32 @input_mapper_add(i32* %23, i32 %26, i32 %27, %struct.srcimp_mgr* %28)
  %30 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %31 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %34 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %33, i32 0, i32 1
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_mapper_delete(i32*, %struct.imapper*, i32, %struct.srcimp_mgr*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @input_mapper_add(i32*, i32, i32, %struct.srcimp_mgr*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
