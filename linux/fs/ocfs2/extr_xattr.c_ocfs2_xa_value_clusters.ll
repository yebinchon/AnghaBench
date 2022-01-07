; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_value_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_value_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xa_loc*)* @ocfs2_xa_value_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_xa_loc*, align 8
  %4 = alloca %struct.ocfs2_xattr_value_buf, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %3, align 8
  %5 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @ocfs2_xattr_is_local(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %13 = call i32 @ocfs2_xa_fill_value_buf(%struct.ocfs2_xa_loc* %12, %struct.ocfs2_xattr_value_buf* %4)
  %14 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %4, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @ocfs2_xattr_is_local(i32) #1

declare dso_local i32 @ocfs2_xa_fill_value_buf(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_value_buf*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
