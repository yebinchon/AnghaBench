; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c___rpc_depopulate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c___rpc_depopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rpc_filelist = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.rpc_filelist*, i32, i32)* @__rpc_depopulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_depopulate(%struct.dentry* %0, %struct.rpc_filelist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.rpc_filelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.qstr, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.rpc_filelist* %1, %struct.rpc_filelist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %67, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = load %struct.rpc_filelist*, %struct.rpc_filelist** %6, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rpc_filelist, %struct.rpc_filelist* %21, i64 %23
  %25 = getelementptr inbounds %struct.rpc_filelist, %struct.rpc_filelist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.rpc_filelist*, %struct.rpc_filelist** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rpc_filelist, %struct.rpc_filelist* %28, i64 %30
  %32 = getelementptr inbounds %struct.rpc_filelist, %struct.rpc_filelist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %36, %struct.qstr* %11)
  store %struct.dentry* %37, %struct.dentry** %10, align 8
  %38 = load %struct.dentry*, %struct.dentry** %10, align 8
  %39 = icmp eq %struct.dentry* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  br label %67

41:                                               ; preds = %20
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = call i64 @d_really_is_negative(%struct.dentry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %64

46:                                               ; preds = %41
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = call %struct.inode* @d_inode(%struct.dentry* %47)
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @S_IFMT, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %53 [
    i32 128, label %55
    i32 129, label %59
  ]

53:                                               ; preds = %46
  %54 = call i32 (...) @BUG()
  br label %55

55:                                               ; preds = %46, %53
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = load %struct.dentry*, %struct.dentry** %10, align 8
  %58 = call i32 @__rpc_unlink(%struct.inode* %56, %struct.dentry* %57)
  br label %63

59:                                               ; preds = %46
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = load %struct.dentry*, %struct.dentry** %10, align 8
  %62 = call i32 @__rpc_rmdir(%struct.inode* %60, %struct.dentry* %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.dentry*, %struct.dentry** %10, align 8
  %66 = call i32 @dput(%struct.dentry* %65)
  br label %67

67:                                               ; preds = %64, %40
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %16

70:                                               ; preds = %16
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__rpc_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @__rpc_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
