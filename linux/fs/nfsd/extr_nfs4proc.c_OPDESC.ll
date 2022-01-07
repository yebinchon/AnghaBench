; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_OPDESC.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_OPDESC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_operation = type { i32 }
%struct.nfsd4_op = type { i64 }

@nfsd4_ops = common dso_local global %struct.nfsd4_operation* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfsd4_operation* @OPDESC(%struct.nfsd4_op* %0) #0 {
  %2 = alloca %struct.nfsd4_op*, align 8
  store %struct.nfsd4_op* %0, %struct.nfsd4_op** %2, align 8
  %3 = load %struct.nfsd4_operation*, %struct.nfsd4_operation** @nfsd4_ops, align 8
  %4 = load %struct.nfsd4_op*, %struct.nfsd4_op** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.nfsd4_operation, %struct.nfsd4_operation* %3, i64 %6
  ret %struct.nfsd4_operation* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
