; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/extr_iint.c_integrity_inode_free.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/extr_iint.c_integrity_inode_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.integrity_iint_cache = type { i32 }

@integrity_iint_lock = common dso_local global i32 0, align 4
@integrity_iint_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @integrity_inode_free(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.integrity_iint_cache*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call i32 @IS_IMA(%struct.inode* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = call i32 @write_lock(i32* @integrity_iint_lock)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.integrity_iint_cache* @__integrity_iint_find(%struct.inode* %10)
  store %struct.integrity_iint_cache* %11, %struct.integrity_iint_cache** %3, align 8
  %12 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %13 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %12, i32 0, i32 0
  %14 = call i32 @rb_erase(i32* %13, i32* @integrity_iint_tree)
  %15 = call i32 @write_unlock(i32* @integrity_iint_lock)
  %16 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %17 = call i32 @iint_free(%struct.integrity_iint_cache* %16)
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @IS_IMA(%struct.inode*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.integrity_iint_cache* @__integrity_iint_find(%struct.inode*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @iint_free(%struct.integrity_iint_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
