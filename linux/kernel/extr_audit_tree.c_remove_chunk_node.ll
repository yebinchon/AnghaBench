; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_remove_chunk_node.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_remove_chunk_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_chunk = type { i32 }
%struct.node = type { %struct.audit_tree*, i32 }
%struct.audit_tree = type { %struct.audit_chunk*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_chunk*, %struct.node*)* @remove_chunk_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_chunk_node(%struct.audit_chunk* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.audit_chunk*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.audit_tree*, align 8
  store %struct.audit_chunk* %0, %struct.audit_chunk** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  %6 = load %struct.node*, %struct.node** %4, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %8 = load %struct.audit_tree*, %struct.audit_tree** %7, align 8
  store %struct.audit_tree* %8, %struct.audit_tree** %5, align 8
  %9 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %10 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %9, i32 0, i32 0
  %11 = load %struct.audit_chunk*, %struct.audit_chunk** %10, align 8
  %12 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %13 = icmp eq %struct.audit_chunk* %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %16 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %19 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %18, i32 0, i32 0
  store %struct.audit_chunk* null, %struct.audit_chunk** %19, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.node*, %struct.node** %4, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 1
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %struct.node*, %struct.node** %4, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 0
  store %struct.audit_tree* null, %struct.audit_tree** %25, align 8
  %26 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %27 = call i32 @put_tree(%struct.audit_tree* %26)
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @put_tree(%struct.audit_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
