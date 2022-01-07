; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_frontswap_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_frontswap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zswap_tree = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"alloc failed, zswap disabled for swap type %d\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@zswap_trees = common dso_local global %struct.zswap_tree** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @zswap_frontswap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zswap_frontswap_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zswap_tree*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.zswap_tree* @kzalloc(i32 8, i32 %4)
  store %struct.zswap_tree* %5, %struct.zswap_tree** %3, align 8
  %6 = load %struct.zswap_tree*, %struct.zswap_tree** %3, align 8
  %7 = icmp ne %struct.zswap_tree* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @RB_ROOT, align 4
  %13 = load %struct.zswap_tree*, %struct.zswap_tree** %3, align 8
  %14 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.zswap_tree*, %struct.zswap_tree** %3, align 8
  %16 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.zswap_tree*, %struct.zswap_tree** %3, align 8
  %19 = load %struct.zswap_tree**, %struct.zswap_tree*** @zswap_trees, align 8
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.zswap_tree*, %struct.zswap_tree** %19, i64 %21
  store %struct.zswap_tree* %18, %struct.zswap_tree** %22, align 8
  br label %23

23:                                               ; preds = %11, %8
  ret void
}

declare dso_local %struct.zswap_tree* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
