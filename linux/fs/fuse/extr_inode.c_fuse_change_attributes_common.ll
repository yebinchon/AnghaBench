; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_change_attributes_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_change_attributes_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fuse_attr = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fuse_conn = type { i32, i32, i32, i32 }
%struct.fuse_inode = type { i32, i32, i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_change_attributes_common(%struct.inode* %0, %struct.fuse_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %11)
  store %struct.fuse_inode* %12, %struct.fuse_inode** %8, align 8
  %13 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %14 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %13, i32 0, i32 5
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 3
  %18 = call i32 @atomic64_inc_return(i32* %17)
  %19 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %20 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %23 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %25 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WRITE_ONCE(i32 %26, i32 0)
  %28 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %29 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @fuse_squash_ino(i32 %30)
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @S_IFMT, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %40 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 4095
  %43 = or i32 %38, %42
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %48 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @set_nlink(%struct.inode* %46, i32 %49)
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %52 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %55 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @make_kuid(i32 %53, i32 %56)
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %61 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %64 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @make_kgid(i32 %62, i32 %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %70 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %75 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %81 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %87 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %3
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @S_ISREG(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %121, label %96

96:                                               ; preds = %90, %3
  %97 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %98 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %104 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %110 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %116 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %96, %90
  %122 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %123 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %128 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @ilog2(i64 %129)
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  br label %141

133:                                              ; preds = %121
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %133, %126
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %146 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %148 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %141
  %152 = load i32, i32* @S_ISVTX, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.inode*, %struct.inode** %4, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %151, %141
  %159 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %160 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %163 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @fuse_squash_ino(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
