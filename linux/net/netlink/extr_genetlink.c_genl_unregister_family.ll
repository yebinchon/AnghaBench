; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_unregister_family.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_unregister_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@genl_fam_idr = common dso_local global i32 0, align 4
@cb_lock = common dso_local global i32 0, align 4
@genl_sk_destructing_waitq = common dso_local global i32 0, align 4
@genl_sk_destructing_cnt = common dso_local global i32 0, align 4
@CTRL_CMD_DELFAMILY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_unregister_family(%struct.genl_family* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genl_family*, align 8
  store %struct.genl_family* %0, %struct.genl_family** %3, align 8
  %4 = call i32 (...) @genl_lock_all()
  %5 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %6 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @genl_family_find_byid(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @genl_unlock_all()
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %16 = call i32 @genl_unregister_mc_groups(%struct.genl_family* %15)
  %17 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %18 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @idr_remove(i32* @genl_fam_idr, i32 %19)
  %21 = call i32 @up_write(i32* @cb_lock)
  %22 = load i32, i32* @genl_sk_destructing_waitq, align 4
  %23 = call i64 @atomic_read(i32* @genl_sk_destructing_cnt)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event(i32 %22, i32 %25)
  %27 = call i32 (...) @genl_unlock()
  %28 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %29 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load i32, i32* @CTRL_CMD_DELFAMILY, align 4
  %33 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %34 = call i32 @genl_ctrl_event(i32 %32, %struct.genl_family* %33, i32* null, i32 0)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %14, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @genl_lock_all(...) #1

declare dso_local i32 @genl_family_find_byid(i32) #1

declare dso_local i32 @genl_unlock_all(...) #1

declare dso_local i32 @genl_unregister_mc_groups(%struct.genl_family*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @genl_unlock(...) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @genl_ctrl_event(i32, %struct.genl_family*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
