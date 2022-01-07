; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_warn_on_nonidempotent_op.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_warn_on_nonidempotent_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_op = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OP_MODIFIES_SOMETHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unable to encode reply to nonidempotent op %d (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_on_nonidempotent_op(%struct.nfsd4_op* %0) #0 {
  %2 = alloca %struct.nfsd4_op*, align 8
  store %struct.nfsd4_op* %0, %struct.nfsd4_op** %2, align 8
  %3 = load %struct.nfsd4_op*, %struct.nfsd4_op** %2, align 8
  %4 = call %struct.TYPE_2__* @OPDESC(%struct.nfsd4_op* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @OP_MODIFIES_SOMETHING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.nfsd4_op*, %struct.nfsd4_op** %2, align 8
  %12 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfsd4_op*, %struct.nfsd4_op** %2, align 8
  %15 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nfsd4_op_name(i32 %16)
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @OPDESC(%struct.nfsd4_op*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @nfsd4_op_name(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
