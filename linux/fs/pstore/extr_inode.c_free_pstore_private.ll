; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_free_pstore_private.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_free_pstore_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_private = type { %struct.pstore_private*, %struct.pstore_private* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pstore_private*)* @free_pstore_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pstore_private(%struct.pstore_private* %0) #0 {
  %2 = alloca %struct.pstore_private*, align 8
  store %struct.pstore_private* %0, %struct.pstore_private** %2, align 8
  %3 = load %struct.pstore_private*, %struct.pstore_private** %2, align 8
  %4 = icmp ne %struct.pstore_private* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.pstore_private*, %struct.pstore_private** %2, align 8
  %8 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %7, i32 0, i32 0
  %9 = load %struct.pstore_private*, %struct.pstore_private** %8, align 8
  %10 = icmp ne %struct.pstore_private* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.pstore_private*, %struct.pstore_private** %2, align 8
  %13 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %12, i32 0, i32 0
  %14 = load %struct.pstore_private*, %struct.pstore_private** %13, align 8
  %15 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %14, i32 0, i32 1
  %16 = load %struct.pstore_private*, %struct.pstore_private** %15, align 8
  %17 = call i32 @kfree(%struct.pstore_private* %16)
  %18 = load %struct.pstore_private*, %struct.pstore_private** %2, align 8
  %19 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %18, i32 0, i32 0
  %20 = load %struct.pstore_private*, %struct.pstore_private** %19, align 8
  %21 = call i32 @kfree(%struct.pstore_private* %20)
  br label %22

22:                                               ; preds = %11, %6
  %23 = load %struct.pstore_private*, %struct.pstore_private** %2, align 8
  %24 = call i32 @kfree(%struct.pstore_private* %23)
  br label %25

25:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @kfree(%struct.pstore_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
