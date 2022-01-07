; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_do_copy_up.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_do_copy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_copy_up_ctx = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_13__*, i32, %struct.TYPE_13__*, %struct.TYPE_12__, i32, %struct.TYPE_11__, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.ovl_fs* }
%struct.ovl_fs = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.inode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@OVL_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_copy_up_ctx*)* @ovl_do_copy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_do_copy_up(%struct.ovl_copy_up_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ovl_copy_up_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ovl_fs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.ovl_copy_up_ctx* %0, %struct.ovl_copy_up_ctx** %3, align 8
  %8 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %8, i32 0, i32 3
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.ovl_fs*, %struct.ovl_fs** %13, align 8
  store %struct.ovl_fs* %14, %struct.ovl_fs** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = call i64 @ovl_need_index(%struct.TYPE_13__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISDIR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %30, i32 0, i32 3
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = call i8* @ovl_indexdir(%struct.TYPE_14__* %34)
  %36 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  br label %39

38:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %29
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %47, %40
  %57 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %63, i32 0, i32 3
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = call i8* @ovl_indexdir(%struct.TYPE_14__* %67)
  %69 = bitcast i8* %68 to %struct.TYPE_13__*
  %70 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %70, i32 0, i32 5
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %71, align 8
  %72 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %76, i32 0, i32 2
  %78 = call i32 @ovl_get_index_name(i32 %75, %struct.TYPE_15__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %183

83:                                               ; preds = %62
  br label %110

84:                                               ; preds = %59
  %85 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @WARN_ON(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %183

96:                                               ; preds = %84
  %97 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %100, i32 0, i32 5
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = call i32 @ovl_set_impure(i32 %99, %struct.TYPE_13__* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %183

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %83
  %111 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @S_ISREG(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %119 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %124 = call i32 @ovl_copy_up_tmpfile(%struct.ovl_copy_up_ctx* %123)
  store i32 %124, i32* %4, align 4
  br label %128

125:                                              ; preds = %117, %110
  %126 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %127 = call i32 @ovl_copy_up_workdir(%struct.ovl_copy_up_ctx* %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %172

132:                                              ; preds = %128
  %133 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @OVL_INDEX, align 4
  %139 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %140 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %139, i32 0, i32 3
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = call %struct.inode* @d_inode(%struct.TYPE_13__* %141)
  %143 = call i32 @ovl_set_flag(i32 %138, %struct.inode* %142)
  br label %144

144:                                              ; preds = %137, %132
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %149 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %148, i32 0, i32 3
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = call i32 @ovl_set_nlink_upper(%struct.TYPE_13__* %150)
  store i32 %151, i32* %4, align 4
  br label %171

152:                                              ; preds = %144
  %153 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %154 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %153, i32 0, i32 5
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = call %struct.inode* @d_inode(%struct.TYPE_13__* %155)
  store %struct.inode* %156, %struct.inode** %7, align 8
  %157 = load %struct.inode*, %struct.inode** %7, align 8
  %158 = call i32 @inode_lock(%struct.inode* %157)
  %159 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %159, i32 0, i32 5
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %162, i32 0, i32 4
  %164 = call i32 @ovl_set_timestamps(%struct.TYPE_13__* %161, i32* %163)
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = call i32 @inode_unlock(%struct.inode* %165)
  %167 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %168 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %167, i32 0, i32 3
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = call i32 @ovl_dentry_set_upper_alias(%struct.TYPE_13__* %169)
  br label %171

171:                                              ; preds = %152, %147
  br label %172

172:                                              ; preds = %171, %131
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @kfree(i32 %179)
  br label %181

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %4, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %181, %106, %93, %81
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i64 @ovl_need_index(%struct.TYPE_13__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @ovl_indexdir(%struct.TYPE_14__*) #1

declare dso_local i32 @ovl_get_index_name(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ovl_set_impure(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ovl_copy_up_tmpfile(%struct.ovl_copy_up_ctx*) #1

declare dso_local i32 @ovl_copy_up_workdir(%struct.ovl_copy_up_ctx*) #1

declare dso_local i32 @ovl_set_flag(i32, %struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.TYPE_13__*) #1

declare dso_local i32 @ovl_set_nlink_upper(%struct.TYPE_13__*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ovl_set_timestamps(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ovl_dentry_set_upper_alias(%struct.TYPE_13__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
