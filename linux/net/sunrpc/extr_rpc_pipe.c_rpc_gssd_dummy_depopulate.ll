; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_gssd_dummy_depopulate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_gssd_dummy_depopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry* }

@gssd_dummy_info_file = common dso_local global i32 0, align 4
@gssd_dummy_clnt_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @rpc_gssd_dummy_depopulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_gssd_dummy_depopulate(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = call i32 @dget(%struct.dentry* %11)
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call i32 @d_inode(%struct.dentry* %13)
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = call i32 @__rpc_rmpipe(i32 %14, %struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = load i32, i32* @gssd_dummy_info_file, align 4
  %19 = call i32 @__rpc_depopulate(%struct.dentry* %17, i32 %18, i32 0, i32 1)
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load i32, i32* @gssd_dummy_clnt_dir, align 4
  %22 = call i32 @__rpc_depopulate(%struct.dentry* %20, i32 %21, i32 0, i32 1)
  %23 = load %struct.dentry*, %struct.dentry** %2, align 8
  %24 = call i32 @dput(%struct.dentry* %23)
  ret void
}

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @__rpc_rmpipe(i32, %struct.dentry*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @__rpc_depopulate(%struct.dentry*, i32, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
