; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_fault_inject.c_nfsd_fault_inject_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_fault_inject.c_nfsd_fault_inject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_fault_inject_op = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@debug_dir = common dso_local global i32 0, align 4
@inject_ops = common dso_local global %struct.nfsd_fault_inject_op* null, align 8
@fops_nfsd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_fault_inject_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.nfsd_fault_inject_op*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @S_IFREG, align 4
  %5 = load i32, i32* @S_IRUSR, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @S_IWUSR, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %9, i32* @debug_dir, align 4
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %27, %0
  %11 = load i32, i32* %1, align 4
  %12 = load %struct.nfsd_fault_inject_op*, %struct.nfsd_fault_inject_op** @inject_ops, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.nfsd_fault_inject_op* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.nfsd_fault_inject_op*, %struct.nfsd_fault_inject_op** @inject_ops, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nfsd_fault_inject_op, %struct.nfsd_fault_inject_op* %16, i64 %18
  store %struct.nfsd_fault_inject_op* %19, %struct.nfsd_fault_inject_op** %2, align 8
  %20 = load %struct.nfsd_fault_inject_op*, %struct.nfsd_fault_inject_op** %2, align 8
  %21 = getelementptr inbounds %struct.nfsd_fault_inject_op, %struct.nfsd_fault_inject_op* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @debug_dir, align 4
  %25 = load %struct.nfsd_fault_inject_op*, %struct.nfsd_fault_inject_op** %2, align 8
  %26 = call i32 @debugfs_create_file(i32 %22, i32 %23, i32 %24, %struct.nfsd_fault_inject_op* %25, i32* @fops_nfsd)
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %1, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %10

30:                                               ; preds = %10
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nfsd_fault_inject_op*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.nfsd_fault_inject_op*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
