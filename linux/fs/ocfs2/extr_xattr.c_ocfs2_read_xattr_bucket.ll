; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_read_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_read_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_bucket = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_bucket*, i32)* @ocfs2_read_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_xattr_bucket* %0, %struct.ocfs2_xattr_bucket** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call i32 @INODE_CACHE(%struct.TYPE_6__* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ocfs2_read_blocks(i32 %9, i32 %10, i32 %13, i32 %16, i32 0, i32* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %2
  %21 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_5__* @OCFS2_SB(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %41 = call %struct.TYPE_4__* @bucket_xh(%struct.ocfs2_xattr_bucket* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @ocfs2_validate_meta_ecc_bhs(i32 %33, i32 %36, i32 %39, i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_5__* @OCFS2_SB(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %20
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %57

57:                                               ; preds = %54, %20
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %63 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ocfs2_read_blocks(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @INODE_CACHE(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_validate_meta_ecc_bhs(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
