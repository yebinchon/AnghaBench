; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstat = type { i32 }
%struct.iattr = type { i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstat*)* @ovl_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_set_size(%struct.dentry* %0, %struct.kstat* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstat*, align 8
  %5 = alloca %struct.iattr, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstat* %1, %struct.kstat** %4, align 8
  %6 = getelementptr inbounds %struct.iattr, %struct.iattr* %5, i32 0, i32 0
  %7 = load %struct.kstat*, %struct.kstat** %4, align 8
  %8 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.iattr, %struct.iattr* %5, i32 0, i32 1
  %11 = load i32, i32* @ATTR_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i32 @notify_change(%struct.dentry* %12, %struct.iattr* %5, i32* null)
  ret i32 %13
}

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
