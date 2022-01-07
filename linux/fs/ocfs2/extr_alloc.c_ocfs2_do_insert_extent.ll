; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_do_insert_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_do_insert_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32 }
%struct.ocfs2_insert_type = type { i64, i64, i64 }
%struct.ocfs2_path = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APPEND_NONE = common dso_local global i64 0, align 8
@CONTIG_NONE = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@APPEND_TAIL = common dso_local global i64 0, align 8
@CONTIG_LEFT = common dso_local global i64 0, align 8
@SPLIT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_insert_type*)* @ocfs2_do_insert_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_do_insert_extent(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_rec* %2, %struct.ocfs2_insert_type* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_extent_rec*, align 8
  %8 = alloca %struct.ocfs2_insert_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_path*, align 8
  %13 = alloca %struct.ocfs2_path*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %7, align 8
  store %struct.ocfs2_insert_type* %3, %struct.ocfs2_insert_type** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %13, align 8
  %15 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %15, i32 0, i32 2
  %17 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  store %struct.ocfs2_extent_list* %17, %struct.ocfs2_extent_list** %14, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %20 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %21 = call i32 @ocfs2_et_root_journal_access(i32* %18, %struct.ocfs2_extent_tree* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %168

27:                                               ; preds = %4
  %28 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le16_to_cpu(i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %35 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %36 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %37 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %38 = call i32 @ocfs2_insert_at_leaf(%struct.ocfs2_extent_tree* %34, %struct.ocfs2_extent_rec* %35, %struct.ocfs2_extent_list* %36, %struct.ocfs2_insert_type* %37)
  br label %149

39:                                               ; preds = %27
  %40 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %41 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %40)
  store %struct.ocfs2_path* %41, %struct.ocfs2_path** %12, align 8
  %42 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %43 = icmp ne %struct.ocfs2_path* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %168

49:                                               ; preds = %39
  %50 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %51 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @APPEND_NONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %61 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CONTIG_NONE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  %66 = load i32, i32* @UINT_MAX, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %59, %49
  %68 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ocfs2_find_path(i32 %70, %struct.ocfs2_path* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %168

79:                                               ; preds = %67
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %85 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %86 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %93 = call i32 @ocfs2_rotate_tree_right(i32* %83, %struct.ocfs2_extent_tree* %84, i64 %87, i32 %91, %struct.ocfs2_path* %92, %struct.ocfs2_path** %13)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %168

99:                                               ; preds = %82
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %102 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %103 = call i32 @ocfs2_et_root_journal_access(i32* %100, %struct.ocfs2_extent_tree* %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %168

109:                                              ; preds = %99
  br label %135

110:                                              ; preds = %79
  %111 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %112 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @APPEND_TAIL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %118 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CONTIG_LEFT, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %125 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %126 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %127 = call i32 @ocfs2_append_rec_to_path(i32* %123, %struct.ocfs2_extent_tree* %124, %struct.ocfs2_extent_rec* %125, %struct.ocfs2_path* %126, %struct.ocfs2_path** %13)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @mlog_errno(i32 %131)
  br label %168

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %116, %110
  br label %135

135:                                              ; preds = %134, %109
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %138 = load %struct.ocfs2_path*, %struct.ocfs2_path** %13, align 8
  %139 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %140 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %141 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %142 = call i32 @ocfs2_insert_path(i32* %136, %struct.ocfs2_extent_tree* %137, %struct.ocfs2_path* %138, %struct.ocfs2_path* %139, %struct.ocfs2_extent_rec* %140, %struct.ocfs2_insert_type* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %168

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %33
  %150 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %8, align 8
  %151 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SPLIT_NONE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %157 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %158 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @le16_to_cpu(i32 %159)
  %161 = call i32 @ocfs2_et_update_clusters(%struct.ocfs2_extent_tree* %156, i64 %160)
  br label %162

162:                                              ; preds = %155, %149
  %163 = load i32*, i32** %5, align 8
  %164 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %165 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ocfs2_journal_dirty(i32* %163, i32 %166)
  br label %168

168:                                              ; preds = %162, %145, %130, %106, %96, %76, %44, %24
  %169 = load %struct.ocfs2_path*, %struct.ocfs2_path** %13, align 8
  %170 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %169)
  %171 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %172 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %171)
  %173 = load i32, i32* %9, align 4
  ret i32 %173
}

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_insert_at_leaf(%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_list*, %struct.ocfs2_insert_type*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_rotate_tree_right(i32*, %struct.ocfs2_extent_tree*, i64, i32, %struct.ocfs2_path*, %struct.ocfs2_path**) #1

declare dso_local i32 @ocfs2_append_rec_to_path(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_path*, %struct.ocfs2_path**) #1

declare dso_local i32 @ocfs2_insert_path(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*, %struct.ocfs2_insert_type*) #1

declare dso_local i32 @ocfs2_et_update_clusters(%struct.ocfs2_extent_tree*, i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
