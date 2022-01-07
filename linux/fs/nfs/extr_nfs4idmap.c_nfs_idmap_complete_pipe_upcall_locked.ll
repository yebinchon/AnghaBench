; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_complete_pipe_upcall_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_complete_pipe_upcall_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.key* }
%struct.key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idmap*, i32)* @nfs_idmap_complete_pipe_upcall_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_idmap_complete_pipe_upcall_locked(%struct.idmap* %0, i32 %1) #0 {
  %3 = alloca %struct.idmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.key*, align 8
  store %struct.idmap* %0, %struct.idmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.idmap*, %struct.idmap** %3, align 8
  %7 = getelementptr inbounds %struct.idmap, %struct.idmap* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.key*, %struct.key** %9, align 8
  store %struct.key* %10, %struct.key** %5, align 8
  %11 = load %struct.idmap*, %struct.idmap** %3, align 8
  %12 = getelementptr inbounds %struct.idmap, %struct.idmap* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @kfree(%struct.TYPE_2__* %13)
  %15 = load %struct.idmap*, %struct.idmap** %3, align 8
  %16 = getelementptr inbounds %struct.idmap, %struct.idmap* %15, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.key*, %struct.key** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @complete_request_key(%struct.key* %17, i32 %18)
  %20 = load %struct.key*, %struct.key** %5, align 8
  %21 = call i32 @key_put(%struct.key* %20)
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @complete_request_key(%struct.key*, i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
