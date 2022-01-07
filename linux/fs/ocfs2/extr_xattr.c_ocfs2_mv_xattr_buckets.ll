; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_mv_xattr_buckets.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_mv_xattr_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i64, i64, i64, i32, i32*)* @ocfs2_mv_xattr_buckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mv_xattr_buckets(%struct.inode* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %22 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ocfs2_super* @OCFS2_SB(i32 %25)
  store %struct.ocfs2_super* %26, %struct.ocfs2_super** %18, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ocfs2_blocks_per_xattr_bucket(i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %32 = call i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @trace_ocfs2_mv_xattr_buckets(i64 %33, i64 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp uge i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %7
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %20, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %19, align 4
  %49 = mul i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %43, %7
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %54)
  store %struct.ocfs2_xattr_bucket* %55, %struct.ocfs2_xattr_bucket** %21, align 8
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %56)
  store %struct.ocfs2_xattr_bucket* %57, %struct.ocfs2_xattr_bucket** %22, align 8
  %58 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %59 = icmp ne %struct.ocfs2_xattr_bucket* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %62 = icmp ne %struct.ocfs2_xattr_bucket* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %180

68:                                               ; preds = %60
  %69 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %69, i64 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %180

77:                                               ; preds = %68
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %19, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %17, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @ocfs2_extend_trans(i32* %82, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %180

90:                                               ; preds = %77
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %93 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %94 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %91, %struct.ocfs2_xattr_bucket* %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %180

100:                                              ; preds = %90
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %19, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  %114 = load i64, i64* %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %19, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = call i32 @ocfs2_cp_xattr_bucket(%struct.inode* %106, i32* %107, i64 %113, i64 %119, i32 1)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %105
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @mlog_errno(i32 %124)
  br label %180

126:                                              ; preds = %105
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %101

130:                                              ; preds = %101
  %131 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %131, i64 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @mlog_errno(i32 %137)
  br label %180

139:                                              ; preds = %130
  %140 = load i32*, i32** %9, align 8
  %141 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %142 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %143 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %140, %struct.ocfs2_xattr_bucket* %141, i32 %142)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @mlog_errno(i32 %147)
  br label %180

149:                                              ; preds = %139
  %150 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %151 = call %struct.TYPE_4__* @bucket_xh(%struct.ocfs2_xattr_bucket* %150)
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %20, align 4
  %154 = sub nsw i32 0, %153
  %155 = call i32 @le16_add_cpu(i32* %152, i32 %154)
  %156 = load i32*, i32** %9, align 8
  %157 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %158 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %156, %struct.ocfs2_xattr_bucket* %157)
  %159 = load i32, i32* %20, align 4
  %160 = call i32 @cpu_to_le16(i32 %159)
  %161 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %162 = call %struct.TYPE_4__* @bucket_xh(%struct.ocfs2_xattr_bucket* %161)
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %166 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %164, %struct.ocfs2_xattr_bucket* %165)
  %167 = load i32*, i32** %14, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %149
  %170 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %171 = call %struct.TYPE_4__* @bucket_xh(%struct.ocfs2_xattr_bucket* %170)
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le32_to_cpu(i32 %176)
  %178 = load i32*, i32** %14, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %169, %149
  br label %180

180:                                              ; preds = %179, %146, %136, %123, %97, %87, %74, %63
  %181 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %182 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %181)
  %183 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %184 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %183)
  %185 = load i32, i32* %16, align 4
  ret i32 %185
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(i32) #1

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super*) #1

declare dso_local i32 @trace_ocfs2_mv_xattr_buckets(i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket*, i64) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_cp_xattr_bucket(%struct.inode*, i32*, i64, i64, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
