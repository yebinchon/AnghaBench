; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_sequence_args = type { i32, i32, i32* }
%struct.nfs4_sequence_res = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_init_sequence(%struct.nfs4_sequence_args* %0, %struct.nfs4_sequence_res* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_sequence_args*, align 8
  %6 = alloca %struct.nfs4_sequence_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfs4_sequence_args* %0, %struct.nfs4_sequence_args** %5, align 8
  store %struct.nfs4_sequence_res* %1, %struct.nfs4_sequence_res** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %5, align 8
  %16 = getelementptr inbounds %struct.nfs4_sequence_args, %struct.nfs4_sequence_args* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %6, align 8
  %18 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
