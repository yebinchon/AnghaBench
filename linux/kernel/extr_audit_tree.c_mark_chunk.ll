; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_mark_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_mark_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_chunk = type { i32 }
%struct.fsnotify_mark = type { i32 }
%struct.TYPE_2__ = type { %struct.audit_chunk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_chunk* (%struct.fsnotify_mark*)* @mark_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_chunk* @mark_chunk(%struct.fsnotify_mark* %0) #0 {
  %2 = alloca %struct.fsnotify_mark*, align 8
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %2, align 8
  %3 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %4 = call %struct.TYPE_2__* @audit_mark(%struct.fsnotify_mark* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.audit_chunk*, %struct.audit_chunk** %5, align 8
  ret %struct.audit_chunk* %6
}

declare dso_local %struct.TYPE_2__* @audit_mark(%struct.fsnotify_mark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
