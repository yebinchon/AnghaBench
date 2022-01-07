; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_replace_mark_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_replace_mark_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32 }
%struct.audit_chunk = type { %struct.fsnotify_mark* }
%struct.TYPE_2__ = type { %struct.audit_chunk* }

@hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsnotify_mark*, %struct.audit_chunk*)* @replace_mark_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_mark_chunk(%struct.fsnotify_mark* %0, %struct.audit_chunk* %1) #0 {
  %3 = alloca %struct.fsnotify_mark*, align 8
  %4 = alloca %struct.audit_chunk*, align 8
  %5 = alloca %struct.audit_chunk*, align 8
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %3, align 8
  store %struct.audit_chunk* %1, %struct.audit_chunk** %4, align 8
  %6 = call i32 @assert_spin_locked(i32* @hash_lock)
  %7 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %8 = call %struct.audit_chunk* @mark_chunk(%struct.fsnotify_mark* %7)
  store %struct.audit_chunk* %8, %struct.audit_chunk** %5, align 8
  %9 = load %struct.audit_chunk*, %struct.audit_chunk** %4, align 8
  %10 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %11 = call %struct.TYPE_2__* @audit_mark(%struct.fsnotify_mark* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.audit_chunk* %9, %struct.audit_chunk** %12, align 8
  %13 = load %struct.audit_chunk*, %struct.audit_chunk** %4, align 8
  %14 = icmp ne %struct.audit_chunk* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %17 = load %struct.audit_chunk*, %struct.audit_chunk** %4, align 8
  %18 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %17, i32 0, i32 0
  store %struct.fsnotify_mark* %16, %struct.fsnotify_mark** %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.audit_chunk*, %struct.audit_chunk** %5, align 8
  %21 = icmp ne %struct.audit_chunk* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.audit_chunk*, %struct.audit_chunk** %5, align 8
  %24 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %23, i32 0, i32 0
  store %struct.fsnotify_mark* null, %struct.fsnotify_mark** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local %struct.audit_chunk* @mark_chunk(%struct.fsnotify_mark*) #1

declare dso_local %struct.TYPE_2__* @audit_mark(%struct.fsnotify_mark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
