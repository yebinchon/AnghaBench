; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_bucket = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xattr_bucket*)* @ocfs2_xattr_bucket_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %0) #0 {
  %2 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store %struct.ocfs2_xattr_bucket* %0, %struct.ocfs2_xattr_bucket** %2, align 8
  %3 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %2, align 8
  %4 = icmp ne %struct.ocfs2_xattr_bucket* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %2, align 8
  %7 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %6)
  %8 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %2, align 8
  %11 = call i32 @kfree(%struct.ocfs2_xattr_bucket* %10)
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @kfree(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
