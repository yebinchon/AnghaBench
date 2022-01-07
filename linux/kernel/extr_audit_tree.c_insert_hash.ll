; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_insert_hash.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_insert_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_chunk = type { i32, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_chunk*)* @insert_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_hash(%struct.audit_chunk* %0) #0 {
  %2 = alloca %struct.audit_chunk*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.audit_chunk* %0, %struct.audit_chunk** %2, align 8
  %4 = call i32 (...) @smp_wmb()
  %5 = load %struct.audit_chunk*, %struct.audit_chunk** %2, align 8
  %6 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.audit_chunk*, %struct.audit_chunk** %2, align 8
  %13 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.list_head* @chunk_hash(i32 %14)
  store %struct.list_head* %15, %struct.list_head** %3, align 8
  %16 = load %struct.audit_chunk*, %struct.audit_chunk** %2, align 8
  %17 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %16, i32 0, i32 0
  %18 = load %struct.list_head*, %struct.list_head** %3, align 8
  %19 = call i32 @list_add_rcu(i32* %17, %struct.list_head* %18)
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.list_head* @chunk_hash(i32) #1

declare dso_local i32 @list_add_rcu(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
