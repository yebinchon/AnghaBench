; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_BUG.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_BUG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i32, %struct.audit_watch* }
%struct.audit_watch = type { i32, %struct.audit_parent* }
%struct.audit_parent = type { i32, i32 }

@audit_watch_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_remove_watch_rule(%struct.audit_krule* %0) #0 {
  %2 = alloca %struct.audit_krule*, align 8
  %3 = alloca %struct.audit_watch*, align 8
  %4 = alloca %struct.audit_parent*, align 8
  store %struct.audit_krule* %0, %struct.audit_krule** %2, align 8
  %5 = load %struct.audit_krule*, %struct.audit_krule** %2, align 8
  %6 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %5, i32 0, i32 1
  %7 = load %struct.audit_watch*, %struct.audit_watch** %6, align 8
  store %struct.audit_watch* %7, %struct.audit_watch** %3, align 8
  %8 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %9 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %8, i32 0, i32 1
  %10 = load %struct.audit_parent*, %struct.audit_parent** %9, align 8
  store %struct.audit_parent* %10, %struct.audit_parent** %4, align 8
  %11 = load %struct.audit_krule*, %struct.audit_krule** %2, align 8
  %12 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %11, i32 0, i32 0
  %13 = call i32 @list_del(i32* %12)
  %14 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %15 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %20 = call i32 @audit_get_parent(%struct.audit_parent* %19)
  %21 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %22 = call i32 @audit_remove_watch(%struct.audit_watch* %21)
  %23 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %24 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %23, i32 0, i32 1
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %29 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %28, i32 0, i32 0
  %30 = load i32, i32* @audit_watch_group, align 4
  %31 = call i32 @fsnotify_destroy_mark(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %34 = call i32 @audit_put_parent(%struct.audit_parent* %33)
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @audit_get_parent(%struct.audit_parent*) #1

declare dso_local i32 @audit_remove_watch(%struct.audit_watch*) #1

declare dso_local i32 @fsnotify_destroy_mark(i32*, i32) #1

declare dso_local i32 @audit_put_parent(%struct.audit_parent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
