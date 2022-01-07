; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_sequence_attach_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_sequence_attach_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_sequence_args = type { %struct.nfs4_slot*, i64 }
%struct.nfs4_sequence_res = type { %struct.nfs4_slot* }
%struct.nfs4_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_sequence_args*, %struct.nfs4_sequence_res*, %struct.nfs4_slot*)* @nfs4_sequence_attach_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_sequence_attach_slot(%struct.nfs4_sequence_args* %0, %struct.nfs4_sequence_res* %1, %struct.nfs4_slot* %2) #0 {
  %4 = alloca %struct.nfs4_sequence_args*, align 8
  %5 = alloca %struct.nfs4_sequence_res*, align 8
  %6 = alloca %struct.nfs4_slot*, align 8
  store %struct.nfs4_sequence_args* %0, %struct.nfs4_sequence_args** %4, align 8
  store %struct.nfs4_sequence_res* %1, %struct.nfs4_sequence_res** %5, align 8
  store %struct.nfs4_slot* %2, %struct.nfs4_slot** %6, align 8
  %7 = load %struct.nfs4_slot*, %struct.nfs4_slot** %6, align 8
  %8 = icmp ne %struct.nfs4_slot* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %25

10:                                               ; preds = %3
  %11 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load %struct.nfs4_slot*, %struct.nfs4_slot** %6, align 8
  %18 = getelementptr inbounds %struct.nfs4_slot, %struct.nfs4_slot* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nfs4_slot*, %struct.nfs4_slot** %6, align 8
  %20 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %20, i32 0, i32 0
  store %struct.nfs4_slot* %19, %struct.nfs4_slot** %21, align 8
  %22 = load %struct.nfs4_slot*, %struct.nfs4_slot** %6, align 8
  %23 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %5, align 8
  %24 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %23, i32 0, i32 0
  store %struct.nfs4_slot* %22, %struct.nfs4_slot** %24, align 8
  br label %25

25:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
